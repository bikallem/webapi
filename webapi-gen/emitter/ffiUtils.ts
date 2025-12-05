/**
 * FFI Safety Utilities
 * 
 * Utilities for checking FFI safety and parameter validation
 */

/**
 * Check if a MoonBit type is safe to use in FFI declarations
 * 
 * FFI declarations cannot use closure types directly.
 * Safe types: primitives, external types, JsValue, standard library types
 * Unsafe types: closure types like (String) -> Unit
 */
export function isFfiSafeType(moonbitType: string): boolean {
  // Closure types are not FFI safe
  if (moonbitType.includes('->')) {
    return false
  }

  // Generic types with closure parameters are not safe
  if (moonbitType.includes('[') && moonbitType.includes('->')) {
    return false
  }

  return true
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
