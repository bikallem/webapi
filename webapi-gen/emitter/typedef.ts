/**
 * Typedef Emitter
 * 
 * Generates MoonBit code for Web IDL typedef types.
 * For example: typedef EventHandlerNonNull? EventHandler;
 * For unions: typedef (Type1 or Type2 or Type3) UnionName;
 */

import type { ParsedTypedef, ParsedIdl, ParsedType } from "../types.js";
import { toSnakeCase, formatIdlSourceAsComment } from "../utils.js";
import { mapIdlType, formatReturnType } from "../mapping.js";

/**
 * Emit external type declaration for typedef
 */
function emitTypedefType(typedef: ParsedTypedef): string {
    return `///|
#external
pub type ${typedef.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(typedef: ParsedTypedef): string {
    return `///|
pub impl TJsValue for ${typedef.name} with to_js(self : ${typedef.name}) -> JsValue = "%identity"`;
}

/**
 * Get the underlying type name from a typedef
 * For nullable types like "EventHandlerNonNull?", returns "EventHandlerNonNull"
 */
function getUnderlyingTypeName(typedef: ParsedTypedef): string | undefined {
    if (typedef.type.type === "nullable" && typedef.type.elementType) {
        if (typedef.type.elementType.type === "reference" && typedef.type.elementType.name) {
            return typedef.type.elementType.name;
        }
    }
    if (typedef.type.type === "reference" && typedef.type.name) {
        return typedef.type.name;
    }
    return undefined;
}

/**
 * Emit constructor for typedef that delegates to underlying callback type
 */
function emitTypedefConstructor(typedef: ParsedTypedef, idl: ParsedIdl): string | undefined {
    const underlyingName = getUnderlyingTypeName(typedef);
    if (!underlyingName) return undefined;

    // Look up the callback
    const callback = idl.callbacks.get(underlyingName);
    if (!callback) return undefined;

    // Build the function signature for the callback
    const paramTypes: string[] = [];
    for (const param of callback.params) {
        const mapped = mapIdlType(param.type);
        paramTypes.push(mapped.moonbitType);
    }

    const returnType = formatReturnType(callback.returnType);
    const closureParamStr = paramTypes.join(", ");
    const closureType = `(${closureParamStr}) -> ${returnType}`;

    const ffiName = `${toSnakeCase(typedef.name)}_new_ffi`;

    // FFI function
    const ffiFn = `///|
fn ${ffiName}(f : JsValue) -> ${typedef.name} = "webapi_${underlyingName}" "new"`;

    // Wrapper that delegates to underlying type's constructor logic
    const wrapperFn = `///|
pub fn ${typedef.name}::new(f : ${closureType}) -> ${typedef.name} {
  ${ffiName}(fn_to_js(f))
}`;

    return `${ffiFn}\n\n${wrapperFn}`;
}

/**
 * Check if the typedef is nullable (e.g., EventHandlerNonNull?)
 */
function isNullableTypedef(typedef: ParsedTypedef): boolean {
    return typedef.type.type === "nullable";
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
 * Emit union type definition with trait and into method
 */
function emitUnionType(typedef: ParsedTypedef): string {
    const parts: string[] = [];

    // External type
    parts.push(`///|
#external
pub type ${typedef.name}`);

    // Open trait for the union
    parts.push(`///|
pub(open) trait T${typedef.name} {
  to_js(self : Self) -> JsValue
}`);

    // Into method for downcasting
    parts.push(`///|
pub fn[T : T${typedef.name}] ${typedef.name}::into(self : ${typedef.name}) -> T = "%identity"`);

    // null() and is_null() for nullable union returns
    parts.push(`///|
pub fn ${typedef.name}::null() -> ${typedef.name} = "JsValue" "null"

///|
pub fn ${typedef.name}::is_null(self : ${typedef.name}) -> Bool = "JsValue" "isNull"`);

    return parts.join("\n\n");
}

/**
 * Emit trait implementations for each member of a union type
 */
function emitUnionMemberImpls(typedef: ParsedTypedef, idl: ParsedIdl): string | undefined {
    const memberNames = getUnionMemberNames(typedef);
    if (memberNames.length === 0) return undefined;

    const impls: string[] = [];

    for (const memberName of memberNames) {
        // Only generate impl if the interface exists in our generated set
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

    // Include WebIDL source as comment
    const idlComment = formatIdlSourceAsComment(typedef.idlSource);
    if (idlComment) {
        parts.push(`//\n// WebIDL Typedef:\n${idlComment}`);
    }

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
