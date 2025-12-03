/**
 * Method Emitter
 * 
 * Generates MoonBit FFI functions and trait method signatures for Web IDL methods.
 */

import type { ParsedInterface, ParsedMethod, ParsedType } from "../types.js";
import {
  toSnakeCase,
  escapeKeyword,
  toFfiModuleName,
  toTraitName,
} from "../utils.js";
import { mapIdlType, formatReturnType, getDefaultValueExpr } from "../mapping.js";

/**
 * Generate FFI function name for a method
 */
function getFfiName(interfaceName: string, methodName: string): string {
  return `${toSnakeCase(interfaceName)}_${toSnakeCase(methodName)}_ffi`;
}

/**
 * Generate union argument trait name
 * e.g., addEventListener + options -> TAddEventListenerOptionsArg
 */
function getUnionArgTraitName(methodName: string, paramName: string): string {
  // Capitalize first letter of method name (already in camelCase/PascalCase)
  const methodCapitalized = methodName.charAt(0).toUpperCase() + methodName.slice(1);
  // Capitalize first letter of param name
  const paramCapitalized = paramName.charAt(0).toUpperCase() + paramName.slice(1);
  return `T${methodCapitalized}${paramCapitalized}Arg`;
}

/**
 * Map a union member type to its MoonBit type name
 */
function getUnionMemberMoonbitType(memberType: ParsedType): string {
  switch (memberType.type) {
    case "primitive":
      if (memberType.name === "boolean") return "Bool";
      if (memberType.name === "DOMString" || memberType.name === "USVString" || memberType.name === "ByteString") return "String";
      if (memberType.name === "long" || memberType.name === "short" || memberType.name === "unsigned long" || memberType.name === "unsigned short") return "Int";
      if (memberType.name === "double" || memberType.name === "float") return "Double";
      return "JsValue";
    case "reference":
      return memberType.name || "JsValue";
    default:
      return "JsValue";
  }
}

/**
 * Emit union argument trait definition and implementations
 */
function emitUnionArgTrait(methodName: string, paramName: string, unionType: ParsedType): string {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return "";
  }

  const traitName = getUnionArgTraitName(methodName, paramName);
  const parts: string[] = [];

  // Emit trait definition
  parts.push(`/// Arg : ${paramName}
pub(open) trait ${traitName} {
  to_js(self : Self) -> JsValue
}`);

  // Emit impl for each member type
  for (const memberType of unionType.memberTypes) {
    const moonbitType = getUnionMemberMoonbitType(memberType);

    parts.push(`///|
pub impl ${traitName} for ${moonbitType} with to_js(self : ${moonbitType}) -> JsValue = "%identity"`);
  }

  return parts.join("\n\n");
}

/**
 * Collect all union argument types from a method
 */
function collectUnionArgs(method: ParsedMethod): Array<{ paramName: string; unionType: ParsedType }> {
  const unionArgs: Array<{ paramName: string; unionType: ParsedType }> = [];

  for (const param of method.params) {
    let typeToCheck = param.type;

    // Unwrap nullable to check for union inside
    if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
      typeToCheck = typeToCheck.elementType;
    }

    if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
      unionArgs.push({ paramName: param.name, unionType: typeToCheck });
    }
  }

  return unionArgs;
}

/**
 * Emit trait method signature with = _
 * All parameters are required (no defaults) because it's a trait signature
 */
export function emitTraitMethodSignature(method: ParsedMethod, suffix: string = ""): string {
  const methodName = toSnakeCase(method.name) + suffix;

  // Build parameter list - self first, then all params with optional wrapped in ?
  const params: string[] = ["self : Self"];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Check if this is a union type (possibly wrapped in nullable)
    let typeToCheck = param.type;
    if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
      typeToCheck = typeToCheck.elementType;
    }

    let paramType: string;
    if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
      // Use trait object type for union arguments
      const traitName = getUnionArgTraitName(method.name, param.name);
      paramType = `&${traitName}`;
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

  return `  ${methodName}(${paramsStr}) -> ${returnType} = _`;
}

/**
 * Emit all trait method signatures for an interface
 */
export function emitTraitMethods(iface: ParsedInterface): string[] {
  const signatures: string[] = [];
  const methodNameCounts: Map<string, number> = new Map();

  for (const method of iface.methods) {
    if (!method.static && method.name) {
      const count = methodNameCounts.get(method.name) || 0;
      methodNameCounts.set(method.name, count + 1);
      const suffix = count === 0 ? "" : String(count + 1);
      signatures.push(emitTraitMethodSignature(method, suffix));
    }
  }

  return signatures;
}

/**
 * Emit FFI function declaration for a method
 */
function emitMethodFfi(iface: ParsedInterface, method: ParsedMethod, suffix: string = ""): string {
  const ffiName = getFfiName(iface.name, method.name) + suffix;
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
function emitTraitMethodImpl(iface: ParsedInterface, method: ParsedMethod, suffix: string = ""): string {
  const methodName = toSnakeCase(method.name) + suffix;
  const ffiName = getFfiName(iface.name, method.name) + suffix;
  const traitName = toTraitName(iface.name);

  // Build parameter list - same as trait signature
  const params: string[] = ["self : Self"];
  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const paramName = escapeKeyword(toSnakeCase(param.name));

    // Check if this is a union type (possibly wrapped in nullable)
    let typeToCheck = param.type;
    if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
      typeToCheck = typeToCheck.elementType;
    }

    let paramType: string;
    let defaultExpr: string | undefined;

    if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
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

    // Check if this is a union type
    let typeToCheck = param.type;
    if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
      typeToCheck = typeToCheck.elementType;
    }
    const isUnionArg = typeToCheck.type === "union" && typeToCheck.memberTypes;

    // Check if this union param has a default value
    const hasUnionDefault = isUnionArg && param.optional && param.default === "{}";

    if (param.optional) {
      if (isUnionArg) {
        if (hasUnionDefault) {
          // Has default value - param is not Option, just call to_js directly
          args.push(`${paramName}.to_js()`);
        } else {
          // No default - use match to handle Option
          const jsVarName = `${paramName}_js`;
          letBindings.push(`  let ${jsVarName} = match ${paramName} { Some(v) => v.to_js(), None => JsValue::undefined() }`);
          args.push(jsVarName);
        }
      } else {
        // Non-union optional - use opt_to_js
        const jsVarName = `${paramName}_js`;
        letBindings.push(`  let ${jsVarName} = opt_to_js(${paramName})`);
        args.push(jsVarName);
      }
    } else {
      if (isUnionArg) {
        // Union trait objects have their own to_js method
        args.push(`${paramName}.to_js()`);
      } else {
        // Convert required params using TJsValue::to_js()
        const mapped = mapIdlType(param.type);
        if (mapped.needsConversion) {
          args.push(`TJsValue::to_js(${paramName})`);
        } else {
          args.push(paramName);
        }
      }
    }
  }

  const argsStr = args.join(", ");
  const bindingsStr = letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  // For reference types, we need type conversion
  // FFI functions always return JsValue, so any non-Unit return needs casting
  let returnExpr = `${ffiName}(${argsStr})`;
  if (returnType !== "Unit") {
    if (returnMapped.isOptional) {
      // Use as_option for nullable returns
      returnExpr = `${returnExpr}.as_option()`;
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
 * Static methods can have default values in their wrapper functions
 */
function emitStaticMethod(iface: ParsedInterface, method: ParsedMethod, suffix: string = ""): string {
  const methodName = toSnakeCase(method.name) + suffix;
  const moduleName = toFfiModuleName(iface.name);
  const jsFuncName = method.name;

  // Check if we need a wrapper (for optional params)
  const hasOptionalParams = method.params.some(p => p.optional);

  if (!hasOptionalParams) {
    // Direct FFI binding - all params required
    const params: string[] = [];
    for (const param of method.params) {
      const mapped = mapIdlType(param.type);
      const safeName = escapeKeyword(toSnakeCase(param.name));
      params.push(`${safeName} : ${mapped.moonbitType}`);
    }

    const returnMapped = mapIdlType(method.returnType);
    const returnType = returnMapped.moonbitType === "Unit" ? "Unit" : "JsValue";
    const paramsStr = params.join(", ");

    return `///|
pub fn ${iface.name}::${methodName}(${paramsStr}) -> ${returnType} = "${moduleName}" "${jsFuncName}"`;
  }

  // Need wrapper for optional params
  // First emit FFI
  const ffiParams: string[] = [];
  for (const param of method.params) {
    const safeName = escapeKeyword(toSnakeCase(param.name));
    ffiParams.push(`${safeName} : JsValue`);
  }
  const ffiParamsStr = ffiParams.join(", ");
  const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(method.name)}_ffi${suffix}`;

  const returnMapped = mapIdlType(method.returnType);
  const returnType = returnMapped.moonbitType === "Unit" ? "Unit" : "JsValue";

  const ffiFn = `///|
fn ${ffiName}(${ffiParamsStr}) -> ${returnType} = "${moduleName}" "${jsFuncName}"`;

  // Then emit wrapper with defaults
  const wrapperParams: string[] = [];
  const letBindings: string[] = [];
  const callArgs: string[] = [];

  for (const param of method.params) {
    const mapped = mapIdlType(param.type);
    const safeName = escapeKeyword(toSnakeCase(param.name));

    if (param.optional) {
      // Add optional param with default
      const defaultVal = param.default ? getDefaultValueExpr(param.default, param.type) : undefined;
      if (defaultVal) {
        wrapperParams.push(`${safeName}? : ${mapped.moonbitType} = ${defaultVal}`);
      } else {
        wrapperParams.push(`${safeName}? : ${mapped.moonbitType}`);
      }

      // Convert to JsValue
      const jsVarName = `${safeName}_js`;
      letBindings.push(`  let ${jsVarName} = opt_to_js(${safeName})`);
      callArgs.push(jsVarName);
    } else {
      wrapperParams.push(`${safeName} : ${mapped.moonbitType}`);
      if (mapped.needsConversion) {
        callArgs.push(`TJsValue::to_js(${safeName})`);
      } else {
        callArgs.push(safeName);
      }
    }
  }

  const wrapperParamsStr = wrapperParams.join(", ");
  const callArgsStr = callArgs.join(", ");
  const bindingsStr = letBindings.length > 0 ? "\n" + letBindings.join("\n") : "";

  return `${ffiFn}

///|
pub fn ${iface.name}::${methodName}(${wrapperParamsStr}) -> ${returnType} {${bindingsStr}
  ${ffiName}(${callArgsStr})
}`;
}

/**
 * Emit all FFI functions and method implementations for an interface
 */
export function emitMethods(iface: ParsedInterface): string {
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
        const unionTrait = emitUnionArgTrait(method.name, paramName, unionType);
        if (unionTrait) {
          parts.push(unionTrait);
        }
      }
    }

    if (method.static) {
      parts.push(emitStaticMethod(iface, method, suffix));
    } else {
      // Instance methods: FFI + impl
      parts.push(emitMethodFfi(iface, method, suffix));
      parts.push(emitTraitMethodImpl(iface, method, suffix));
    }
  }

  return parts.join("\n\n");
}
