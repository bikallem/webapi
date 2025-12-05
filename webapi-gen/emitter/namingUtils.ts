/**
 * Naming and FFI Declaration Utilities
 *
 * Centralized utilities for FFI name generation patterns
 */

import { toSnakeCase } from "../utils.js";

/**
 * Generate method FFI function name
 * Example: Element + getAttribute -> element_get_attribute_ffi
 */
export function generateMethodFfiName(
  typeName: string,
  methodName: string,
): string {
  return `${toSnakeCase(typeName)}_${toSnakeCase(methodName)}_ffi`;
}

/**
 * Generate property getter FFI function name
 * Example: Element + tagName -> element_tag_name_ffi
 */
export function generatePropertyGetterFfiName(
  typeName: string,
  propertyName: string,
): string {
  return `${toSnakeCase(typeName)}_${toSnakeCase(propertyName)}_ffi`;
}

/**
 * Generate property setter FFI function name
 * Example: Element + innerHTML -> element_set_inner_html_ffi
 */
export function generatePropertySetterFfiName(
  typeName: string,
  propertyName: string,
): string {
  return `${toSnakeCase(typeName)}_set_${toSnakeCase(propertyName)}_ffi`;
}
