/**
 * Emitter Index
 * 
 * Re-exports all emitter functions.
 */

export { emitInterface, getInterfaceFilename, hasRealConstructor, isFullyAbstract } from "./interface.js";
export { emitMethods, emitTraitMethods, resetEmittedUnionTraits } from "./method.js";
export { emitProperties, emitTraitProperties } from "./property.js";
export { emitConstructors } from "./constructor.js";
export { emitDictionary, getDictionaryFilename } from "./dictionary.js";
export { emitCallback, getCallbackFilename } from "./callback.js";
export { emitTypedef, getTypedefFilename } from "./typedef.js";
export {
    emitUnionType,
    collectAndEmitUnions,
    collectPropertyUnionTypes,
    registerCollectedUnionTypes,
    emitPropertyUnionType,
    getPropertyUnionTypeFilename,
} from "./union.js";
export type { CollectedUnionType } from "./union.js";
export { emitEnum, getEnumFilename } from "./enum.js";
export { emitGlobals } from "./globals.js";
export { emitJsRuntime } from "./js-runtime.js";
export { emitImports, getImportsFilename } from "./imports.js";
