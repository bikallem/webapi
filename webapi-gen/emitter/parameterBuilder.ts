/**
 * Parameter Builder Utilities
 * 
 * Shared utilities for building parameter lists and function signatures
 */

import { ParsedParam, ParsedType } from '../types.js'
import { mapIdlType, formatParam } from '../mapping.js'
import { toSnakeCase, escapeKeyword } from '../utils.js'

/**
 * Build a list of parameter names for calling FFI functions
 */
export function buildFfiCallParameters(
  params: ParsedParam[]
): string[] {
  return params.map(p => escapeKeyword(toSnakeCase(p.name)))
}

/**
 * Build parameter declarations for a function signature
 * Example: [name, value] -> "name : String, value : Int"
 */
export function buildParameterDeclarations(
  params: ParsedParam[]
): string {
  return params
    .map(p => {
      const mapped = mapIdlType(p.type)
      const paramName = escapeKeyword(toSnakeCase(p.name))
      return `${paramName} : ${mapped.moonbitType}`
    })
    .join(', ')
}

/**
 * Build function signature from parameters and return type
 * Example: (String, Int) -> Unit
 */
export function buildFunctionSignature(
  params: ParsedParam[],
  returnType: ParsedType
): string {
  const paramDecls = buildParameterDeclarations(params)
  const returnTypeStr = mapIdlType(returnType).moonbitType

  if (!paramDecls) {
    return `() -> ${returnTypeStr}`
  }
  return `(${paramDecls}) -> ${returnTypeStr}`
}

/**
 * Build parameter list where all params are JsValue (for internal FFI)
 */
export function buildJsValueParameters(
  paramNames: string[]
): string {
  return paramNames.map(name => `${name} : JsValue`).join(', ')
}
