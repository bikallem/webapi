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
 * Check if a type is a union type
 */
export function isUnionType(type: ParsedType): boolean {
    return type.type === 'union'
}

/**
 * Get the union type if this is a union, otherwise undefined
 */
export function getUnionType(type: ParsedType): ParsedType | undefined {
    if (isUnionType(type)) {
        return type
    }
    return undefined
}

/**
 * Check if a type is nullable
 */
export function isNullableType(type: ParsedType): boolean {
    return type.type === 'nullable'
}

/**
 * Check if a type is a sequence/array type
 */
export function isSequenceType(type: ParsedType): boolean {
    return type.type === 'sequence'
}

/**
 * Check if a type is a promise type
 */
export function isPromiseType(type: ParsedType): boolean {
    return type.type === 'promise'
}

/**
 * Check if a type is a record type
 */
export function isRecordType(type: ParsedType): boolean {
    return type.type === 'record'
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
