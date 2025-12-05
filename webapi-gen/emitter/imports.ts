/**
 * Imports Emitter
 * 
 * Generates imports.mbt files for each package that use MoonBit's `using` syntax
 * to import types, traits, and functions from dependencies.
 * 
 * This eliminates the need for @pkg. prefixes when referencing types from
 * dependency packages.
 * 
 * NOTE: Traits that need to be implemented (like TJsValue) should NOT be
 * imported with `using` because MoonBit treats such imported traits as
 * "readonly" - they cannot be implemented for new types. Instead, use the
 * full qualified name (e.g., @core.TJsValue) when implementing the trait.
 */

import { type PackageName, getPackageDependencies } from "../packages.js";

/**
 * Core package exports that other packages typically need
 * 
 * NOTE: Traits must be declared with `pub(open)` to be implementable by
 * types in other packages.
 * 
 * Only include types that actually exist in the core package!
 */
const CORE_EXPORTS = {
  types: [
    "JsValue",
    "JsArray",
    "JsPromise",
    "Blob",
    "BlobPropertyBag",
    "EndingType",
    "ArrayBuffer",
    "DataView",
    "Int8Array",
    "Int16Array",
    "Int32Array",
    "Uint8Array",
    "Uint8ClampedArray",
    "Uint16Array",
    "Uint32Array",
    "BigInt64Array",
    "BigUint64Array",
    "Float32Array",
    "Float64Array",
    "Storage",
  ],
  // Traits - must be pub(open) in the source to be implementable
  traits: [
    "TJsValue",
    "TBlob",
    "TStorage",
  ],
  functions: [
    "opt_to_js",
    "fn_to_js",
    "default_js_value",
  ],
};

/**
 * Geometry package exports
 */
const GEOMETRY_EXPORTS = {
  types: [
    "DOMMatrix",
    "DOMMatrixReadOnly",
    "DOMPoint",
    "DOMPointReadOnly",
    "DOMRect",
    "DOMRectReadOnly",
    "DOMQuad",
  ],
  traits: [
    "TDOMMatrix",
    "TDOMMatrixReadOnly",
    "TDOMPoint",
    "TDOMPointReadOnly",
    "TDOMRect",
    "TDOMRectReadOnly",
    "TDOMQuad",
  ],
  functions: [] as string[],
};

/**
 * DOM package exports that html/canvas/svg packages need
 */
const DOM_EXPORTS = {
  types: [
    "EventTarget",
    "Event",
    "CustomEvent",
    "Node",
    "Element",
    "Document",
    "DocumentFragment",
    "Attr",
    "CharacterData",
    "Text",
    "Comment",
    "ShadowRoot",
    "NodeList",
    "HTMLCollection",
    "NamedNodeMap",
    "DOMTokenList",
    "Range",
    "MutationObserver",
    "MutationRecord",
    "Window",
    "Navigator",
    "Location",
    "History",
    "UIEvent",
    "MouseEvent",
    "KeyboardEvent",
    "FocusEvent",
    "InputEvent",
    "WheelEvent",
    "PointerEvent",
    "TouchEvent",
    "EventListener",
  ],
  traits: [
    "TEventTarget",
    "TEvent",
    "TNode",
    "TElement",
    "TDocument",
    "TCharacterData",
  ],
  functions: [
    "document",
    "window",
    "event_listener",
  ],
};

/**
 * Get exports for a package
 */
function getPackageExports(pkg: PackageName): { types: string[]; traits: string[]; functions: string[] } {
  switch (pkg) {
    case "core":
      return CORE_EXPORTS;
    case "geometry":
      return GEOMETRY_EXPORTS;
    case "dom":
      return DOM_EXPORTS;
    default:
      return { types: [], traits: [], functions: [] };
  }
}

/**
 * Emit imports.mbt content for a package
 */
export function emitImports(pkg: PackageName): string {
  const deps = getPackageDependencies(pkg);
  
  if (deps.length === 0) {
    // Core package has no dependencies
    return `///|
/// Core package - no imports needed
/// This is the base package that other packages depend on.
`;
  }

  const lines: string[] = [];
  lines.push("///|");
  lines.push(`/// Import types, traits, and functions from dependency packages.`);
  lines.push(`/// This eliminates the need for @pkg. prefixes.`);
  lines.push("");

  for (const dep of deps) {
    const exports = getPackageExports(dep);
    
    // Skip if package has no exports
    if (exports.types.length === 0 && exports.traits.length === 0 && exports.functions.length === 0) {
      continue;
    }

    lines.push(`///|`);
    lines.push(`using @${dep} {`);
    
    const items: string[] = [];
    
    // Add types
    for (const type of exports.types) {
      items.push(`  type ${type}`);
    }
    
    // Add traits (use `trait` keyword, not `type`)
    for (const trait of exports.traits) {
      items.push(`  trait ${trait}`);
    }
    
    // Add functions
    for (const fn of exports.functions) {
      items.push(`  ${fn}`);
    }
    
    lines.push(items.join(",\n"));
    lines.push("}");
    lines.push("");
  }

  return lines.join("\n");
}

/**
 * Get the filename for imports file
 */
export function getImportsFilename(): string {
  return "imports.mbt";
}
