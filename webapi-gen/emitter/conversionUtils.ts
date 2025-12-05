/**
 * Type Conversion Builder Utilities
 * 
 * Shared utilities for building type conversion expressions
 * across multiple emitters.
 */

import { ParsedType } from '../types.js'
import { mapIdlType } from '../mapping.js'

/**
 * Convert a value to JS representation (for FFI calls)
 * Adds .to_js() if needed, or handles Option conversions
 */
export function toJsConversion(
  paramName: string,
  type: ParsedType,
  isRequired: boolean
): string {
  const mapped = mapIdlType(type)

  if (!isRequired) {
    // Optional parameter - use TJsValue::opt_to_js
    if (mapped.needsConversion) {
      // For types that need conversion, create a closure
      return `TJsValue::opt_to_js(${paramName}.map(fn { fn.to_js() }))`
    }
    return `TJsValue::opt_to_js(${paramName})`
  }

  // Required parameter
  if (mapped.needsConversion) {
    return `${paramName}.to_js()`
  }
  return paramName
}

/**
 * Convert a value from JS representation (from FFI calls)
 * Handles Result types and conversions
 */
export function fromJsConversion(
  varName: string,
  type: ParsedType
): string {
  if (type.type === 'nullable' && type.elementType) {
    const innerMapped = mapIdlType(type.elementType)
    if (innerMapped.needsConversion) {
      return `if ${varName}.is_null() { None } else { Some(${varName}) }`
    }
    return `if ${varName}.is_null() { None } else { Some(${varName}) }`
  }

  const mapped = mapIdlType(type)
  if (mapped.needsConversion) {
    return `${varName}`
  }
  return varName
}

/**
 * Build a parameter list string from parameters
 * Example: name : String, value : Int -> "name : String, value : Int"
 */
export function buildParameterList(
  params: Array<{ name: string; type: ParsedType }>
): string {
  return params
    .map(p => {
      const mapped = mapIdlType(p.type)
      return `${p.name} : ${mapped.moonbitType}`
    })
    .join(', ')
}

/**
 * Build a parameter list for FFI function with all JsValue params
 */
export function buildJsValueParameterList(
  paramNames: string[]
): string {
  return paramNames.map(name => `${name} : JsValue`).join(', ')
}
