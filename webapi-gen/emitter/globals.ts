/**
 * Globals Emitter
 *
 * Generates MoonBit code for global singleton objects like document and window.
 */

import type { ParsedIdl } from "../types.js";

/**
 * Emit globals.mbt file content
 */
export function emitGlobals(idl: ParsedIdl): string {
  const parts: string[] = [];

  // Header
  parts.push(`// Auto-generated MoonBit bindings for global objects`);
  parts.push(`// Do not edit manually`);

  // Document singleton
  if (idl.interfaces.has("Document")) {
    parts.push(`///|
fn document_ffi() -> Document = "webapi_Globals" "document"

///|
pub let document : Document = document_ffi()`);
  }

  // Window singleton
  if (idl.interfaces.has("Window")) {
    parts.push(`///|
fn window_ffi() -> Window = "webapi_Globals" "window"

///|
pub let window : Window = window_ffi()`);
  }

  // Console (commonly used)
  if (idl.interfaces.has("Console") || idl.interfaces.has("console")) {
    parts.push(`///|
fn console_ffi() -> Console = "webapi_Globals" "console"

///|
pub let console : Console = console_ffi()`);
  }

  // Navigator
  if (idl.interfaces.has("Navigator")) {
    parts.push(`///|
fn navigator_ffi() -> Navigator = "webapi_Globals" "navigator"

///|
pub let navigator : Navigator = navigator_ffi()`);
  }

  return parts.join("\n\n");
}
