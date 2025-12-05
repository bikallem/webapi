/**
 * Method Emitter
 *
 * Generates MoonBit FFI functions and trait method signatures for Web IDL methods.
 */

import type {
  ParsedInterface,
  ParsedMethod,
  ParsedType,
  ParsedIdl,
} from "../types.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  toTraitName,
} from "../utils.js";
import {
  mapIdlType,
  formatReturnType,
  getDefaultValueExpr,
  isKnownEnum,
} from "../mapping.js";
import {
  getUnionMemberMoonbitType,
  getFilteredUnionMembers,
  getCollapsedUnionType,
} from "./unionUtils.js";
import { unwrapNullableType } from "./typeUtils.js";
import { generateMethodFfiName } from "./namingUtils.js";

/**
 * Global tracker for emitted union arg traits to prevent duplicates
 * across interfaces that share mixins (e.g., CanvasPath).
 */
const emittedUnionTraits = new Set<string>();

/**
 * Reset the emitted traits tracker. Call this before generating a new batch.
 */
export function resetEmittedUnionTraits(): void {
  emittedUnionTraits.clear();
}

/**
 * Generate union argument trait name
 * e.g., addEventListener + options -> TAddEventListenerOptionsArg
 */
function getUnionArgTraitName(methodName: string, paramName: string): string {
  // Capitalize first letter of method name (already in camelCase/PascalCase)
  const methodCapitalized =
    methodName.charAt(0).toUpperCase() + methodName.slice(1);
  // Capitalize first letter of param name
  const paramCapitalized =
    paramName.charAt(0).toUpperCase() + paramName.slice(1);
  return `T${methodCapitalized}${paramCapitalized}Arg`;
}

/**
 * Emit union argument trait definition and implementations
 * Returns empty string if union collapses to single type or if already emitted
 * Skips fully abstract interface types (they have no external type)
 */
function emitUnionArgTrait(
  methodName: string,
  paramName: string,
  unionType: ParsedType,
  _idl: ParsedIdl,
): string {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return "";
  }

  const filteredMembers = getFilteredUnionMembers(unionType);

  // If only one type remains after filtering, don't generate trait
  if (filteredMembers.length <= 1) {
    return "";
  }

  const traitName = getUnionArgTraitName(methodName, paramName);

  // Skip if already emitted (prevents duplicates from shared mixins)
  if (emittedUnionTraits.has(traitName)) {
    return "";
  }
  emittedUnionTraits.add(traitName);

  const parts: string[] = [];

  // Emit trait definition
  parts.push(`/// Arg : ${paramName}
pub(open) trait ${traitName} {
  to_js(self : Self) -> JsValue
}`);

  // Emit impl for each filtered member type
  for (const memberType of filteredMembers) {
    const moonbitType = getUnionMemberMoonbitType(memberType);

    parts.push(`///|
pub impl ${traitName} for ${moonbitType} with to_js(self : ${moonbitType}) -> JsValue = "%identity"`);
  }

  return parts.join("\n\n");
}

/**
 * Collect all union argument types from a method
 */
function collectUnionArgs(
  method: ParsedMethod,
): Array<{ paramName: string; unionType: ParsedType }> {
  const unionArgs: Array<{ paramName: string; unionType: ParsedType }> = [];

  for (const param of method.params) {
    const typeToCheck = unwrapNullableType(param.type);

    if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
      unionArgs.push({ paramName: param.name, unionType: typeToCheck });
    }
  }

  return unionArgs;
}

/**
 * Emit trait method signature
 * All parameters are required (no defaults) because it's a trait signature
 * @param method The method to emit
 * @param suffix Optional suffix for overloaded methods
 * @param hasDefaultImpl If true, add `= _` to indicate default implementation exists
 */
export function emitTraitMethodSignature(
  method: ParsedMethod,
  suffix: string = "",
  hasDefaultImpl: boolean = true,
): string {
  const methodName = toSnakeCase(method.name) + suffix;

  // Build parameter list - self first, then all params with optional wrapped in ?
  const params: string[] = ["self : Self"];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Check if this is a union type (possibly wrapped in nullable)
    const typeToCheck = unwrapNullableType(param.type);

    let paramType: string;
    if (mapped.isTypedefUnion) {
      // mapIdlType already returns trait object type for typedef unions (e.g., &TCanvasImageSource)
      paramType = mapped.moonbitType;
    } else if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
      // Check if union collapses to single type after filtering
      const collapsedType = getCollapsedUnionType(typeToCheck);
      if (collapsedType) {
        // Use the single remaining type directly
        paramType = collapsedType;
      } else {
        // Use trait object type for union arguments
        const traitName = getUnionArgTraitName(method.name, param.name);
        paramType = `&${traitName}`;
      }
    } else {
      paramType = mapped.moonbitType;
    }

    // Optional params use paramName? : Type syntax
    if (param.optional) {
      params.push(`${paramName}? : ${paramType}`);
    } else {
      params.push(`${paramName} : ${paramType}`);
    }
  }

  const returnType = formatReturnType(method.returnType);
  const paramsStr = params.join(", ");

  // Add = _ when default implementation exists
  const defaultImpl = hasDefaultImpl ? " = _" : "";
  return `  ${methodName}(${paramsStr}) -> ${returnType}${defaultImpl}`;
}

/**
 * Emit all trait method signatures for an interface
 * @param iface The interface to emit methods for
 * @param hasDefaultImpl If true, add `= _` to indicate default implementations exist
 */
export function emitTraitMethods(
  iface: ParsedInterface,
  hasDefaultImpl: boolean = true,
): string[] {
  const signatures: string[] = [];
  const methodNameCounts: Map<string, number> = new Map();

  for (const method of iface.methods) {
    if (!method.static && method.name) {
      const count = methodNameCounts.get(method.name) || 0;
      methodNameCounts.set(method.name, count + 1);
      const suffix = count === 0 ? "" : String(count + 1);
      signatures.push(emitTraitMethodSignature(method, suffix, hasDefaultImpl));
    }
  }

  return signatures;
}

/**
 * Emit FFI function declaration for a method
 */
function emitMethodFfi(
  iface: ParsedInterface,
  method: ParsedMethod,
  suffix: string = "",
): string {
  const ffiName = generateMethodFfiName(iface.name, method.name) + suffix;
  const moduleName = toFfiModuleName(iface.name);
  const jsFuncName = method.name;

  // Build parameter list - for FFI, all params should be JsValue
  const params: string[] = ["obj : JsValue"];

  for (const param of method.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    params.push(`${paramName} : JsValue`);
  }

  const returnType = formatReturnType(method.returnType);
  // FFI returns JsValue for reference types, primitives for others
  const returnTypeStr = returnType === "Unit" ? "Unit" : "JsValue";

  const paramsStr = params.join(", ");

  return `///|
fn ${ffiName}(${paramsStr}) -> ${returnTypeStr} = "${moduleName}" "${jsFuncName}"`;
}

/**
 * Get the first dictionary/options type from a union for default value
 * e.g., (AddEventListenerOptions or boolean) -> "AddEventListenerOptions"
 */
function getUnionDefaultDictType(unionType: ParsedType): string | undefined {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return undefined;
  }

  // Find the first reference type (dictionary) in the union
  for (const memberType of unionType.memberTypes) {
    if (memberType.type === "reference" && memberType.name) {
      return memberType.name;
    }
  }

  return undefined;
}

/**
 * Emit trait method implementation
 * No defaults in impl - all params are required, optional ones are T?
 */
function emitTraitMethodImpl(
  iface: ParsedInterface,
  method: ParsedMethod,
  suffix: string = "",
): string {
  const methodName = toSnakeCase(method.name) + suffix;
  const ffiName = generateMethodFfiName(iface.name, method.name) + suffix;
  const traitName = toTraitName(iface.name);

  // Build parameter list - same as trait signature
  const params: string[] = ["self : Self"];
  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Check if this is a union type (possibly wrapped in nullable)
    const typeToCheck = unwrapNullableType(param.type);

    let paramType: string;
    let defaultExpr: string | undefined;

    if (mapped.isTypedefUnion) {
      // mapIdlType already returns trait object type for typedef unions (e.g., &TCanvasImageSource)
      paramType = mapped.moonbitType;
    } else if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
      // Check if union collapses to single type after filtering
      const collapsedType = getCollapsedUnionType(typeToCheck);
      if (collapsedType) {
        // Use the single remaining type directly
        paramType = collapsedType;
      } else {
        // Use trait object type for union arguments
        const unionTraitName = getUnionArgTraitName(method.name, param.name);
        paramType = `&${unionTraitName}`;

        // Handle default value for union types
        if (param.optional && param.default === "{}") {
          const dictType = getUnionDefaultDictType(typeToCheck);
          if (dictType) {
            defaultExpr = `${dictType}::empty()`;
          }
        }
      }
    } else if (
      mapped.isDictionary &&
      param.optional &&
      param.default === "{}"
    ) {
      // Dictionary param with {} default - use proper type with ::empty() default
      paramType = mapped.moonbitType;
      defaultExpr = `${mapped.moonbitType}::empty()`;
    } else {
      paramType = mapped.moonbitType;
    }

    // Optional params use paramName? : Type syntax
    if (param.optional) {
      if (defaultExpr) {
        params.push(`${paramName}? : ${paramType} = ${defaultExpr}`);
      } else {
        params.push(`${paramName}? : ${paramType}`);
      }
    } else {
      params.push(`${paramName} : ${paramType}`);
    }
  }

  const returnType = formatReturnType(method.returnType);
  const paramsStr = params.join(", ");
  const returnMapped = mapIdlType(method.returnType);

  // Build FFI call arguments with proper conversion
  const letBindings: string[] = [];
  const args: string[] = ["TJsValue::to_js(self)"];

  for (const param of method.params) {
    const paramName = escapeKeyword(toSnakeCase(param.name));
    const mapped = mapIdlType(param.type);

    // Check if this is a union type
    const typeToCheck = unwrapNullableType(param.type);
    const isUnionArg = typeToCheck.type === "union" && typeToCheck.memberTypes;

    // Check if union collapses to single type
    const collapsedType = isUnionArg
      ? getCollapsedUnionType(typeToCheck)
      : undefined;
    const isCollapsedUnion = collapsedType !== undefined;

    // Check if this param has a default value of {}
    const hasDefaultEmpty = param.optional && param.default === "{}";

    if (param.optional) {
      if (mapped.isTypedefUnion) {
        // Typedef union optional - use explicit trait syntax
        // mapped.moonbitType is &TTypeName, extract TTypeName for the to_js call
        const traitName = mapped.moonbitType.replace(/^&/, "");
        const jsVarName = `${paramName}_js`;
        letBindings.push(
          `  let ${jsVarName} = match ${paramName} { Some(v) => ${traitName}::to_js(v), None => JsValue::undefined() }`,
        );
        args.push(jsVarName);
      } else if (isUnionArg && !isCollapsedUnion) {
        if (hasDefaultEmpty) {
          // Has default value - param is not Option, just call to_js directly
          args.push(`${paramName}.to_js()`);
        } else {
          // No default - use match to handle Option
          const jsVarName = `${paramName}_js`;
          letBindings.push(
            `  let ${jsVarName} = match ${paramName} { Some(v) => v.to_js(), None => JsValue::undefined() }`,
          );
          args.push(jsVarName);
        }
      } else if (mapped.isDictionary && hasDefaultEmpty) {
        // Dictionary with {} default - has actual value, convert directly
        args.push(`TJsValue::to_js(${paramName})`);
      } else if (isCollapsedUnion) {
        // Collapsed union - treat like a regular type
        const jsVarName = `${paramName}_js`;
        letBindings.push(`  let ${jsVarName} = opt_to_js(${paramName})`);
        args.push(jsVarName);
      } else {
        // Non-union optional - use opt_to_js
        const jsVarName = `${paramName}_js`;
        letBindings.push(`  let ${jsVarName} = opt_to_js(${paramName})`);
        args.push(jsVarName);
      }
    } else {
      if (mapped.isTypedefUnion) {
        // Typedef union - use explicit trait syntax
        // mapped.moonbitType is &TTypeName, extract TTypeName for the to_js call
        const traitName = mapped.moonbitType.replace(/^&/, "");
        args.push(`${traitName}::to_js(${paramName})`);
      } else if (isUnionArg && !isCollapsedUnion) {
        // Union trait objects have their own to_js method
        args.push(`${paramName}.to_js()`);
      } else {
        // Convert required params using TJsValue::to_js()
        if (mapped.needsConversion || isCollapsedUnion) {
          args.push(`TJsValue::to_js(${paramName})`);
        } else {
          args.push(paramName);
        }
      }
    }
  }

  const argsStr = args.join(", ");
  const bindingsStr =
    letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  // For reference types, we need type conversion
  // FFI functions always return JsValue, so any non-Unit return needs casting
  let returnExpr = `${ffiName}(${argsStr})`;
  if (returnType !== "Unit") {
    if (returnMapped.isOptional) {
      // Use as_option for nullable returns
      returnExpr = `${returnExpr}.as_option()`;
    } else if (isKnownEnum(returnMapped.moonbitType)) {
      // Use from() for enum types - cast JsValue to String and call from()
      returnExpr = `${returnMapped.moonbitType}::from(${returnExpr}.unsafe_cast()).unwrap()`;
    } else {
      // Use unsafe_cast for type conversion (all non-Unit FFI returns are JsValue)
      returnExpr = `${returnExpr}.unsafe_cast()`;
    }
  }

  return `///|
impl ${traitName} with ${methodName}(${paramsStr}) -> ${returnType} {${bindingsStr}
  ${returnExpr}
}`;
}

/**
 * Emit static method as a type method (X::method_name)
 * Static methods always use a wrapper to handle type conversions
 */
function emitStaticMethod(
  iface: ParsedInterface,
  method: ParsedMethod,
  suffix: string = "",
): string {
  const methodName = toSnakeCase(method.name) + suffix;
  const moduleName = toFfiModuleName(iface.name);
  const jsFuncName = method.name;
  const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(method.name)}_ffi${suffix}`;

  const returnMapped = mapIdlType(method.returnType);
  const returnType = returnMapped.moonbitType === "Unit" ? "Unit" : "JsValue";

  // Always emit FFI with JsValue params
  const ffiParams: string[] = [];
  for (const param of method.params) {
    const safeName = escapeKeyword(toSnakeCase(param.name));
    ffiParams.push(`${safeName} : JsValue`);
  }
  const ffiParamsStr = ffiParams.join(", ");

  const ffiFn = `///|
fn ${ffiName}(${ffiParamsStr}) -> ${returnType} = "${moduleName}" "${jsFuncName}"`;

  // Emit wrapper with proper types and defaults
  const wrapperParams: string[] = [];
  const letBindings: string[] = [];
  const callArgs: string[] = [];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const safeName = escapeKeyword(toSnakeCase(param.name));

    if (param.optional) {
      // Add optional param with default
      const defaultVal = param.default
        ? getDefaultValueExpr(param.default, param.type)
        : undefined;
      if (defaultVal) {
        // With default value: `name? : Type = default` - param is of type Type
        wrapperParams.push(
          `${safeName}? : ${mapped.moonbitType} = ${defaultVal}`,
        );
        // Convert directly to JsValue
        if (mapped.needsConversion) {
          callArgs.push(`TJsValue::to_js(${safeName})`);
        } else {
          callArgs.push(safeName);
        }
      } else {
        // Without default value: `name? : Type` - param is of type Option[Type]
        wrapperParams.push(`${safeName}? : ${mapped.moonbitType}`);
        // Use opt_to_js to handle Option type
        const jsVarName = `${safeName}_js`;
        letBindings.push(`  let ${jsVarName} = opt_to_js(${safeName})`);
        callArgs.push(jsVarName);
      }
    } else {
      wrapperParams.push(`${safeName} : ${mapped.moonbitType}`);
      // Always convert to JsValue for FFI
      if (mapped.needsConversion) {
        callArgs.push(`TJsValue::to_js(${safeName})`);
      } else {
        callArgs.push(safeName);
      }
    }
  }

  const wrapperParamsStr = wrapperParams.join(", ");
  const callArgsStr = callArgs.join(", ");
  const bindingsStr =
    letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  return `${ffiFn}

///|
pub fn ${iface.name}::${methodName}(${wrapperParamsStr}) -> ${returnType} {${bindingsStr}
  ${ffiName}(${callArgsStr})
}`;
}

/**
 * Emit all FFI functions and method implementations for an interface
 * @param iface The interface to emit methods for
 * @param idl The parsed IDL (needed to check for fully abstract types in unions)
 * @param isFullyAbstract If true, skip static methods (no external type exists)
 */
export function emitMethods(
  iface: ParsedInterface,
  idl: ParsedIdl,
  isFullyAbstract: boolean = false,
): string {
  const parts: string[] = [];

  // Track method name occurrences to handle overloads
  const methodNameCounts: Map<string, number> = new Map();

  for (const method of iface.methods) {
    if (!method.name) continue;

    // Calculate suffix for overloaded methods
    const count = methodNameCounts.get(method.name) || 0;
    methodNameCounts.set(method.name, count + 1);
    const suffix = count === 0 ? "" : String(count + 1);

    // Emit union argument traits first (only for first occurrence)
    if (count === 0) {
      const unionArgs = collectUnionArgs(method);
      for (const { paramName, unionType } of unionArgs) {
        const unionTrait = emitUnionArgTrait(
          method.name,
          paramName,
          unionType,
          idl,
        );
        if (unionTrait) {
          parts.push(unionTrait);
        }
      }
    }

    if (method.static) {
      // Skip static methods for fully abstract types (no external type to attach to)
      if (!isFullyAbstract) {
        parts.push(emitStaticMethod(iface, method, suffix));
      }
    } else {
      // Instance methods: FFI + impl (default implementations for trait)
      parts.push(emitMethodFfi(iface, method, suffix));
      parts.push(emitTraitMethodImpl(iface, method, suffix));
    }
  }

  return parts.join("\n\n");
}
