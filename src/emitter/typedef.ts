/**
 * Typedef Emitter
 * 
 * Generates MoonBit code for Web IDL typedef types.
 * For example: typedef EventHandlerNonNull? EventHandler;
 */

import type { ParsedTypedef, ParsedIdl } from "../types.js";
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
 * Emit null() and is_null() methods for nullable typedefs
 */
function emitNullableMethods(typedef: ParsedTypedef): string | undefined {
    if (!isNullableTypedef(typedef)) return undefined;

    return `///|
pub fn ${typedef.name}::null() -> ${typedef.name} = "JsValue" "null"

///|
pub fn ${typedef.name}::is_null(self : ${typedef.name}) -> Bool = "JsValue" "isNull"`;
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

    // Type and impl
    parts.push(emitTypedefType(typedef));
    parts.push(emitTJsValueImpl(typedef));

    // Constructor (if applicable)
    const constructor = emitTypedefConstructor(typedef, idl);
    if (constructor) {
        parts.push(constructor);
    }

    // Nullable methods (if applicable)
    const nullableMethods = emitNullableMethods(typedef);
    if (nullableMethods) {
        parts.push(nullableMethods);
    }

    return parts.join("\n\n");
}

/**
 * Get filename for typedef
 */
export function getTypedefFilename(typedefName: string): string {
    return `${toSnakeCase(typedefName)}.mbt`;
}
