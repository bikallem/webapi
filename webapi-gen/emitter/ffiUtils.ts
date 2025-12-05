/**
 * FFI Safety Utilities
 * 
 * Utilities for checking FFI safety and parameter validation
 */

/**
 * Safe primitive types that can be used in FFI declarations
 */
const FFI_SAFE_PRIMITIVES = new Set([
    "Bool",
    "Int",
    "Int64",
    "UInt",
    "UInt64",
    "Double",
    "Float",
    "String",
    "Unit",
    "JsValue",
])

/**
 * Check if a MoonBit type is safe to use in FFI declarations
 * 
 * FFI declarations cannot use:
 * - Closure types (contain "->")
 * - Generic/array types (contain "[")
 * - Optional types (contain "?")
 * - Trait object types (start with "&")
 * 
 * Safe types: primitives and JsValue
 */
export function isFfiSafeType(moonbitType: string): boolean {
    // Closure types are not FFI safe
    if (moonbitType.includes('->')) {
        return false
    }

    // Arrays, generics, and optionals are not FFI-safe
    if (moonbitType.includes('[') || moonbitType.includes('?')) {
        return false
    }

    // Trait object types are not FFI-safe
    if (moonbitType.startsWith('&')) {
        return false
    }

    // Only allow known safe primitives
    return FFI_SAFE_PRIMITIVES.has(moonbitType)
}

/**
 * Extract the closure type string from a parameter list
 * Returns the closure representation for use in public function signatures
 */
export function buildClosureTypeFromParams(
    params: Array<{ name: string; type: string }>,
    returnType: string
): string {
    if (params.length === 0) {
        return `() -> ${returnType}`
    }

    const paramTypes = params.map(p => p.type).join(', ')
    return `(${paramTypes}) -> ${returnType}`
}
