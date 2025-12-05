/**
 * Naming and FFI Declaration Utilities
 * 
 * Centralized utilities for FFI name generation and trait naming patterns
 */

import { toFfiModuleName, toSnakeCase, toTraitName } from '../utils.js'

/**
 * Generate FFI module name for a type
 * Example: EventHandler -> webapi_EventHandler
 */
export function generateFfiModuleName(typeName: string): string {
    return `webapi_${typeName}`
}

/**
 * Generate FFI function name (snake_case version of type)
 * Example: EventHandler -> event_handler
 */
export function generateFfiName(typeName: string): string {
    return toSnakeCase(typeName)
}

/**
 * Generate trait name for a type
 * Example: EventHandler -> TEventHandler
 */
export function generateTraitName(typeName: string): string {
    return toTraitName(typeName)
}

/**
 * Build FFI declaration string
 * Example: = "webapi_EventHandler" "new"
 */
export function buildFfiDeclaration(
    moduleName: string,
    methodName: string
): string {
    return `= "${moduleName}" "${methodName}"`
}

/**
 * Generate method FFI function name
 * Example: getAttribute -> attribute_get_attribute_ffi
 */
export function generateMethodFfiName(
    typeName: string,
    methodName: string
): string {
    return `${toSnakeCase(typeName)}_${toSnakeCase(methodName)}_ffi`
}

/**
 * Generate property getter FFI function name
 * Example: getAttribute -> element_get_attribute_ffi
 */
export function generatePropertyGetterFfiName(
    typeName: string,
    propertyName: string
): string {
    return `${toSnakeCase(typeName)}_get_${toSnakeCase(propertyName)}_ffi`
}

/**
 * Generate property setter FFI function name
 * Example: setAttribute -> element_set_attribute_ffi
 */
export function generatePropertySetterFfiName(
    typeName: string,
    propertyName: string
): string {
    return `${toSnakeCase(typeName)}_set_${toSnakeCase(propertyName)}_ffi`
}
