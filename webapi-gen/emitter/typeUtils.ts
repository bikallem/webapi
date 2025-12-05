/**
 * Type Utility Functions
 * 
 * Shared utilities for type checking and unwrapping operations
 * used across multiple emitters.
 */

import { ParsedType } from '../types.js'

/**
 * Unwrap a nullable type to get the underlying type
 * Example: nullable String -> String
 */
export function unwrapNullableType(type: ParsedType): ParsedType {
    if (type.type === 'nullable' && type.elementType) {
        return type.elementType
    }
    return type
}

/**
 * Get the reference type name if this is a reference type
 */
export function getReferenceTypeName(type: ParsedType): string | undefined {
    if (type.type === 'reference' && type.name) {
        return type.name
    }
    return undefined
}
