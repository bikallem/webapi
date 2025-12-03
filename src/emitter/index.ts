/**
 * Emitter Index
 * 
 * Re-exports all emitter functions.
 */

export { emitInterface, getInterfaceFilename } from "./interface.js";
export { emitMethods, emitTraitMethods } from "./method.js";
export { emitProperties, emitTraitProperties } from "./property.js";
export { emitConstructors } from "./constructor.js";
export { emitDictionary, getDictionaryFilename } from "./dictionary.js";
export { emitCallback, getCallbackFilename } from "./callback.js";
export { emitUnionType, collectAndEmitUnions } from "./union.js";
export { emitGlobals } from "./globals.js";
export { emitJsRuntime } from "./js-runtime.js";
