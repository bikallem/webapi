/**
 * Typedef Emitter
 *
 * Generates MoonBit code for Web IDL typedef types.
 * For example: typedef EventHandlerNonNull? EventHandler;
 * For unions: typedef (Type1 or Type2 or Type3) UnionName;
 */

import {
  type ParsedTypedef,
  type ParsedIdl,
  unwrapNullableType,
  getReferenceTypeName,
} from "../idl-model.js";
import {
  toSnakeCase,
  emitExternalType as emitExternalTypeCommon,
  emitTJsValueImpl as emitTJsValueImplCommon,
} from "../gen-utils.js";
import { isKnownTypedef } from "../mapping.js";
import { buildClosureType, emitCallbackConstructor } from "./callback.js";

/**
 * Emit external type declaration for typedef
 */
function emitTypedefType(typedef: ParsedTypedef): string {
  return emitExternalTypeCommon(typedef.name);
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(typedef: ParsedTypedef): string {
  return emitTJsValueImplCommon(typedef.name);
}

/**
 * Get the underlying type name from a typedef
 * For nullable types like "EventHandlerNonNull?", returns "EventHandlerNonNull"
 */
function getUnderlyingTypeName(typedef: ParsedTypedef): string | undefined {
  const unwrapped = unwrapNullableType(typedef.type);
  return getReferenceTypeName(unwrapped);
}

/**
 * Emit constructor for typedef that delegates to underlying callback type
 */
function emitTypedefConstructor(
  typedef: ParsedTypedef,
  idl: ParsedIdl,
): string | undefined {
  const underlyingName = getUnderlyingTypeName(typedef);
  if (!underlyingName) return undefined;

  // Look up the callback
  const callback = idl.callbacks.get(underlyingName);
  if (!callback) return undefined;

  const closureType = buildClosureType(callback.params, callback.returnType);
  return emitCallbackConstructor(
    typedef.name,
    `webapi_${underlyingName}`,
    closureType,
  );
}

/**
 * Check if the typedef is a union type
 */
function isUnionTypedef(typedef: ParsedTypedef): boolean {
  return typedef.type.type === "union";
}

/**
 * Get member type names from a union typedef
 */
function getUnionMemberNames(typedef: ParsedTypedef): string[] {
  if (typedef.type.type !== "union" || !typedef.type.memberTypes) {
    return [];
  }

  const names: string[] = [];
  for (const member of typedef.type.memberTypes) {
    if (member.type === "reference" && member.name) {
      names.push(member.name);
    }
  }
  return names;
}

/**
 * Emit union type definition with trait and into method for trait objects
 * No external type - uses trait objects for these union types
 */
function emitUnionType(typedef: ParsedTypedef): string {
  const parts: string[] = [];

  // Open trait for the union (no external type)
  parts.push(`///|
pub(open) trait T${typedef.name} {
  to_js(self : Self) -> JsValue
}`);

  // Into method for trait objects
  parts.push(`///|
pub fn[T : T${typedef.name}] &T${typedef.name}::into(self : &T${typedef.name}) -> T = "%identity"`);

  return parts.join("\n\n");
}

/**
 * Recursively expand union member names, replacing nested typedef unions with their members
 */
function expandUnionMembers(memberNames: string[], idl: ParsedIdl): string[] {
  const expanded: string[] = [];
  const seen = new Set<string>();

  function expand(name: string) {
    if (seen.has(name)) return;
    seen.add(name);

    // If this is a typedef union, expand its members recursively
    if (isKnownTypedef(name)) {
      const nestedTypedef = idl.typedefs.get(name);
      if (
        nestedTypedef &&
        nestedTypedef.type.type === "union" &&
        nestedTypedef.type.memberTypes
      ) {
        for (const member of nestedTypedef.type.memberTypes) {
          if (member.type === "reference" && member.name) {
            expand(member.name);
          }
        }
      }
    } else {
      // Not a typedef union, add it directly
      expanded.push(name);
    }
  }

  for (const name of memberNames) {
    expand(name);
  }

  return expanded;
}

/**
 * Emit trait implementations for each member of a union type
 * Expands nested typedef unions and skips fully abstract types
 */
function emitUnionMemberImpls(
  typedef: ParsedTypedef,
  idl: ParsedIdl,
): string | undefined {
  const memberNames = getUnionMemberNames(typedef);
  if (memberNames.length === 0) return undefined;

  // Expand nested typedef unions
  const expandedMembers = expandUnionMembers(memberNames, idl);

  const impls: string[] = [];

  for (const memberName of expandedMembers) {
    // Generate impl if the member is a known interface
    if (idl.interfaces.has(memberName)) {
      impls.push(`///|
pub impl T${typedef.name} for ${memberName} with to_js(
  self : ${memberName},
) -> JsValue = "%identity"`);
    }
  }

  return impls.length > 0 ? impls.join("\n\n") : undefined;
}

/**
 * Emit complete code for a typedef
 */
export function emitTypedef(typedef: ParsedTypedef, idl: ParsedIdl): string {
  const parts: string[] = [];

  // Header
  parts.push(`// Auto-generated MoonBit bindings for ${typedef.name} typedef`);
  parts.push(`// Do not edit manually`);

  // Handle union types specially
  if (isUnionTypedef(typedef)) {
    parts.push(emitUnionType(typedef));

    // Emit trait impls for union members
    const memberImpls = emitUnionMemberImpls(typedef, idl);
    if (memberImpls) {
      parts.push(memberImpls);
    }

    return parts.join("\n\n");
  }

  // Type and impl (for non-union types)
  parts.push(emitTypedefType(typedef));
  parts.push(emitTJsValueImpl(typedef));

  // Constructor (if applicable)
  const constructor = emitTypedefConstructor(typedef, idl);
  if (constructor) {
    parts.push(constructor);
  }

  return parts.join("\n\n");
}

/**
 * Get filename for typedef
 */
export function getTypedefFilename(typedefName: string): string {
  return `${toSnakeCase(typedefName)}.mbt`;
}
