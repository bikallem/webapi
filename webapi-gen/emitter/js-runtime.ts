/**
 * JavaScript Runtime Emitter
 * 
 * Generates the companion JavaScript/ESM file that provides the WebAssembly import object
 * with all the FFI function implementations.
 */

import type { ParsedIdl, ParsedInterface, ParsedDictionary, ParsedCallback, ParsedMethod, ParsedProperty } from "../types.js";
import { toFfiModuleName } from "../utils.js";

/**
 * JavaScript reserved keywords that need escaping when used as parameter names
 */
const JS_RESERVED_KEYWORDS = new Set([
  "break", "case", "catch", "continue", "debugger", "default", "delete",
  "do", "else", "finally", "for", "function", "if", "in", "instanceof",
  "new", "return", "switch", "this", "throw", "try", "typeof", "var",
  "void", "while", "with", "class", "const", "enum", "export", "extends",
  "import", "super", "implements", "interface", "let", "package", "private",
  "protected", "public", "static", "yield", "await", "arguments", "eval"
]);

/**
 * Escape JavaScript reserved keyword by adding underscore suffix
 */
function escapeJsKeyword(name: string): string {
  if (JS_RESERVED_KEYWORDS.has(name)) {
    return `${name}_`;
  }
  return name;
}

/**
 * Emit method wrapper for JS runtime
 */
function emitJsMethod(method: ParsedMethod): string {
  const paramNames = method.params.map((p, i) => escapeJsKeyword(p.name || `arg${i}`));

  if (method.static) {
    const argsStr = paramNames.join(", ");
    return `    ${method.name}: (${argsStr}) => ${method.name}(${argsStr})`;
  } else {
    const argsStr = paramNames.length > 0 ? ", " + paramNames.join(", ") : "";
    const callArgs = paramNames.join(", ");
    return `    ${method.name}: (obj${argsStr}) => obj.${method.name}(${callArgs})`;
  }
}

/**
 * Emit property getter for JS runtime
 */
function emitJsPropertyGetter(prop: ParsedProperty): string {
  if (prop.static) {
    return `    get_${prop.name}: () => ${prop.name}`;
  }
  return `    get_${prop.name}: (obj) => obj.${prop.name}`;
}

/**
 * Emit property setter for JS runtime
 */
function emitJsPropertySetter(prop: ParsedProperty): string {
  if (prop.static) {
    return `    set_${prop.name}: (value) => { ${prop.name} = value; }`;
  }
  return `    set_${prop.name}: (obj, value) => { obj.${prop.name} = value; }`;
}

/**
 * Emit interface module for JS runtime
 */
function emitJsInterface(iface: ParsedInterface): string {
  const moduleName = toFfiModuleName(iface.name);
  const entries: string[] = [];

  // Constructor
  if (iface.constructors.length > 0) {
    const firstCtor = iface.constructors[0];
    const paramNames = firstCtor.params.map((p, i) => escapeJsKeyword(p.name || `arg${i}`));
    const argsStr = paramNames.join(", ");
    entries.push(`    new: (${argsStr}) => new ${iface.name}(${argsStr})`);
  }

  // Methods
  for (const method of iface.methods) {
    if (!method.name) continue;
    entries.push(emitJsMethod(method));
  }

  // Properties
  for (const prop of iface.properties) {
    entries.push(emitJsPropertyGetter(prop));
    if (!prop.readonly) {
      entries.push(emitJsPropertySetter(prop));
    }
  }

  if (entries.length === 0) {
    return "";
  }

  return `  ${moduleName}: {
${entries.join(",\n")}
  }`;
}

/**
 * Emit dictionary module for JS runtime
 */
function emitJsDictionary(dict: ParsedDictionary): string {
  const moduleName = toFfiModuleName(dict.name);

  if (dict.members.length === 0) {
    return `  ${moduleName}: {
    new: () => ({})
  }`;
  }

  const paramNames = dict.members.map(m => escapeJsKeyword(m.name));
  const originalNames = dict.members.map(m => m.name);
  const paramsStr = paramNames.join(", ");

  return `  ${moduleName}: {
    new: (${paramsStr}) => {
      const obj = {};
      ${paramNames.map((n, i) => `if (${n} !== undefined) obj.${originalNames[i]} = ${n};`).join("\n      ")}
      return obj;
    }
  }`;
}

/**
 * Emit callback module for JS runtime
 */
function emitJsCallback(callback: ParsedCallback): string {
  const moduleName = toFfiModuleName(callback.name);

  return `  ${moduleName}: {
    new: (f) => f
  }`;
}

/**
 * Emit callback interface module for JS runtime
 */
function emitJsCallbackInterface(iface: ParsedInterface): string {
  const moduleName = toFfiModuleName(iface.name);

  return `  ${moduleName}: {
    new: (f) => f
  }`;
}

/**
 * Emit the complete JS runtime file
 */
export function emitJsRuntime(idl: ParsedIdl): string {
  const modules: string[] = [];

  // Base modules
  modules.push(`  "moonbit:ffi": {
    make_closure: (funcref, closure) => funcref.bind(null, closure)
  }`);

  modules.push(`  JsValue: {
    undefined: () => undefined,
    null: () => null,
    isNull: (value) => value === null || value === undefined
  }`);

  modules.push(`  JsNull: {
    null: () => null
  }`);

  modules.push(`  JsArray: {
    empty: () => [],
    push: (arr, value) => arr.push(value)
  }`);

  modules.push(`  JsPromise: {
    await: (promise) => promise,
    resolve: (value) => Promise.resolve(value),
    reject: (error) => Promise.reject(error)
  }`);

  modules.push(`  webapi_Dictionary: {
    empty: () => ({})
  }`);

  // Globals
  modules.push(`  webapi_Globals: {
    document: () => document,
    window: () => window,
    console: () => console,
    navigator: () => navigator
  }`);

  // Console (commonly used)
  modules.push(`  webapi_Console: {
    log: (console, ...args) => console.log(...args),
    warn: (console, ...args) => console.warn(...args),
    error: (console, ...args) => console.error(...args),
    info: (console, ...args) => console.info(...args),
    debug: (console, ...args) => console.debug(...args)
  }`);

  // EventListener (from template file)
  modules.push(`  webapi_EventListener: {
    new: (f) => f
  }`);

  // Interfaces
  for (const [_name, iface] of idl.interfaces) {
    // Callback interfaces get a simple constructor like callbacks
    if (iface.isCallbackInterface) {
      modules.push(emitJsCallbackInterface(iface));
      continue;
    }
    const moduleCode = emitJsInterface(iface);
    if (moduleCode) {
      modules.push(moduleCode);
    }
  }

  // Dictionaries
  for (const [_name, dict] of idl.dictionaries) {
    modules.push(emitJsDictionary(dict));
  }

  // Callbacks
  for (const [_name, callback] of idl.callbacks) {
    modules.push(emitJsCallback(callback));
  }

  return `/**
 * Auto-generated JavaScript runtime for MoonBit DOM bindings
 * Do not edit manually
 */

export const wasmImportObject = {
${modules.join(",\n\n")}
};

/**
 * Helper function to instantiate the WebAssembly module with the import object
 */
export async function instantiate(wasmPath) {
  const response = await fetch(wasmPath);
  const { instance } = await WebAssembly.instantiateStreaming(response, wasmImportObject);
  return instance;
}

/**
 * Helper function to instantiate with js-string builtins support
 */
export async function instantiateWithBuiltins(wasmPath) {
  const response = await fetch(wasmPath);
  const { instance } = await WebAssembly.instantiateStreaming(
    response, 
    wasmImportObject,
    {
      builtins: ["js-string"],
      importedStringConstants: "_"
    }
  );
  return instance;
}
`;
}
