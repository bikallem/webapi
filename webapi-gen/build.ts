/**
 * Build Orchestrator
 * 
 * Main entry point that coordinates the generation process:
 * 1. Fetches Web IDL from @webref/idl
 * 2. Parses and merges all IDL
 * 3. Applies mixins
 * 4. Generates MoonBit files
 * 5. Generates JavaScript runtime
 */

import * as fs from "node:fs/promises";
import * as path from "node:path";
import { fileURLToPath } from "node:url";

import { parseIdl, mergeIdl, applyMixins } from "./widlprocess.js";
import type { ParsedIdl } from "./types.js";
import { registerDictionaries, registerEnums } from "./mapping.js";
import {
  emitInterface,
  getInterfaceFilename,
  emitDictionary,
  getDictionaryFilename,
  emitCallback,
  getCallbackFilename,
  emitTypedef,
  getTypedefFilename,
  emitEnum,
  getEnumFilename,
  emitGlobals,
  emitJsRuntime,
  resetEmittedUnionTraits,
  collectPropertyUnionTypes,
  registerCollectedUnionTypes,
  emitPropertyUnionType,
  getPropertyUnionTypeFilename,
} from "./emitter/index.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = path.resolve(__dirname, "..");
const OUTPUT_DIR = path.join(PROJECT_ROOT, "webapi", "dom");
const TEMPLATES_DIR = path.join(PROJECT_ROOT, "base.mbt");

/**
 * Core DOM specs to include
 */
const CORE_SPECS = [
  "dom",           // Core DOM interfaces
  "html",          // HTML elements
  "uievents",      // UI events
  "cssom",         // CSS Object Model
  "cssom-view",    // CSSOM View (scrolling, etc.)
  "geometry",      // DOMPoint, DOMRect, DOMMatrix, etc.
  "FileAPI",       // Blob, File, FileReader, etc.
  "dom-shadow",    // Shadow DOM (ShadowRoot, slots, etc.)
];

/**
 * Dictionary prefixes to exclude (from specs not fully included)
 */
const EXCLUDED_DICTIONARY_PREFIXES = [
  "Navigate",
  "Navigation",
  "PageReveal",
  "PageSwap",
];

/**
 * Filter interfaces to core DOM APIs
 */
const CORE_INTERFACES = new Set([
  // EventTarget hierarchy
  "EventTarget",
  "Event",
  "CustomEvent",
  // EventListener is manually defined in base.mbt

  // Node hierarchy
  "Node",
  "Document",
  "DocumentFragment",
  "DocumentType",
  "Element",
  "Attr",
  "CharacterData",
  "Text",
  "Comment",
  "CDATASection",
  "ProcessingInstruction",

  // HTML Elements (core)
  "HTMLElement",
  "HTMLHtmlElement",
  "HTMLHeadElement",
  "HTMLBodyElement",
  "HTMLDivElement",
  "HTMLSpanElement",
  "HTMLParagraphElement",
  "HTMLAnchorElement",
  "HTMLButtonElement",
  "HTMLInputElement",
  "HTMLFormElement",
  "HTMLImageElement",
  "HTMLScriptElement",
  "HTMLStyleElement",
  "HTMLLinkElement",
  "HTMLCanvasElement",
  "HTMLVideoElement",
  "HTMLAudioElement",

  // Collections
  "NodeList",
  "HTMLCollection",
  "NamedNodeMap",
  "DOMTokenList",

  // Ranges and selections
  "Range",
  "Selection",

  // Events
  "UIEvent",
  "MouseEvent",
  "KeyboardEvent",
  "FocusEvent",
  "InputEvent",
  "WheelEvent",
  "PointerEvent",
  "TouchEvent",
  "Touch",
  "TouchList",

  // Other important types
  "Window",
  "Console",
  "Navigator",
  "Location",
  "History",
  "Storage",
  "AbortController",
  "AbortSignal",

  // DOM manipulation
  "MutationObserver",
  "MutationRecord",
  "DOMRect",
  "DOMRectReadOnly",
  "DOMPoint",
  "DOMPointReadOnly",
  "DOMMatrix",
  "DOMMatrixReadOnly",

  // Canvas rendering contexts and related types
  "CanvasRenderingContext2D",
  "ImageBitmapRenderingContext",
  "OffscreenCanvasRenderingContext2D",
  "CanvasGradient",
  "CanvasPattern",
  "OffscreenCanvas",

  // Types needed for union types (CanvasImageSource, ImageBitmapSource, etc.)
  "ImageBitmap",
  "ImageData",
  "Blob",
  // Note: VideoFrame is in webcodecs spec and is excluded for now

  // Shadow DOM
  "ShadowRoot",
  "HTMLSlotElement",
]);

/**
 * Fetch and parse all IDL from @webref/idl
 */
async function fetchIdl(): Promise<ParsedIdl[]> {
  console.log("Fetching Web IDL from @webref/idl...");

  // Dynamic import of @webref/idl
  const webrefIdl = await import("@webref/idl");
  const allIdl = await webrefIdl.listAll();

  const parsedIdls: ParsedIdl[] = [];

  for (const [specName, idlFile] of Object.entries(allIdl)) {
    // Only process core specs
    if (!CORE_SPECS.includes(specName)) {
      continue;
    }

    console.log(`  Parsing ${specName}...`);

    try {
      const idlText = await (idlFile as any).text();
      const parsed = parseIdl(idlText);
      parsedIdls.push(parsed);
    } catch (err) {
      console.warn(`  Warning: Failed to parse ${specName}:`, err);
    }
  }

  return parsedIdls;
}

/**
 * Filter IDL to only include core interfaces
 */
function filterToCoreInterfaces(idl: ParsedIdl): ParsedIdl {
  const filtered: ParsedIdl = {
    interfaces: new Map(),
    dictionaries: new Map(),
    enums: new Map(),
    callbacks: new Map(),
    typedefs: new Map(),
    includes: [],
  };

  // Filter interfaces
  for (const [name, iface] of idl.interfaces) {
    if (CORE_INTERFACES.has(name)) {
      filtered.interfaces.set(name, iface);
    }
  }

  // Keep dictionaries that aren't from excluded specs
  for (const [name, dict] of idl.dictionaries) {
    const isExcluded = EXCLUDED_DICTIONARY_PREFIXES.some(prefix => name.startsWith(prefix));
    if (!isExcluded) {
      filtered.dictionaries.set(name, dict);
    }
  }

  // Keep all enums
  filtered.enums = idl.enums;

  // Keep callbacks that aren't from excluded specs
  for (const [name, callback] of idl.callbacks) {
    const isExcluded = EXCLUDED_DICTIONARY_PREFIXES.some(prefix => name.startsWith(prefix));
    if (!isExcluded) {
      filtered.callbacks.set(name, callback);
    }
  }

  // Keep typedefs that we want to generate (event handlers, union types, etc.)
  const GENERATED_TYPEDEFS = new Set([
    "EventHandler",
    "OnErrorEventHandler",
    "OnBeforeUnloadEventHandler",
    "RenderingContext",
    // Union type typedefs
    "CanvasImageSource",
    "ImageBitmapSource",
    "HTMLOrSVGImageElement",
  ]);
  for (const [name, typedef] of idl.typedefs) {
    if (GENERATED_TYPEDEFS.has(name)) {
      filtered.typedefs.set(name, typedef);
    }
  }

  // Filter includes to only those involving core interfaces
  for (const include of idl.includes) {
    if (CORE_INTERFACES.has(include.target)) {
      filtered.includes.push(include);
    }
  }

  return filtered;
}

/**
 * Ensure output directory exists and is clean
 */
async function prepareOutputDir(): Promise<void> {
  console.log("Preparing output directory...");

  // Create output directory if it doesn't exist
  await fs.mkdir(OUTPUT_DIR, { recursive: true });

  // Clean existing .mbt and .mjs files
  const files = await fs.readdir(OUTPUT_DIR);
  for (const file of files) {
    if (file.endsWith(".mbt") || file.endsWith(".mjs")) {
      await fs.unlink(path.join(OUTPUT_DIR, file));
    }
  }
}

/**
 * Copy template files
 */
async function copyTemplates(): Promise<void> {
  console.log("Copying template files...");

  const templateFiles = [
    "js_value.mbt",
    "js_promise.mbt",
    "js_array.mbt",
    "primitives.mbt",
    "event_listener.mbt",
  ];

  for (const file of templateFiles) {
    const src = path.join(TEMPLATES_DIR, file);
    const dst = path.join(OUTPUT_DIR, file);
    console.log(`  Copying ${file}...`);
    await fs.copyFile(src, dst);
  }
}

/**
 * Generate all MoonBit files
 */
async function generateMoonBitFiles(
  idl: ParsedIdl,
  propertyUnionTypes: Map<string, import("./emitter/index.js").CollectedUnionType>
): Promise<void> {
  console.log("Generating MoonBit files...");

  // Reset the union traits tracker before generating interfaces
  // This prevents duplicates from shared mixins (e.g., CanvasPath)
  resetEmittedUnionTraits();

  // Generate property union type files FIRST so they're available for interfaces
  for (const [name, unionType] of propertyUnionTypes) {
    const filename = getPropertyUnionTypeFilename(name);
    const content = emitPropertyUnionType(unionType, idl);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate interface files
  for (const [name, iface] of idl.interfaces) {
    const filename = getInterfaceFilename(name);
    const content = emitInterface(iface, idl);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate dictionary files
  for (const [name, dict] of idl.dictionaries) {
    const filename = getDictionaryFilename(name);
    const content = emitDictionary(dict);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate callback files
  for (const [name, callback] of idl.callbacks) {
    const filename = getCallbackFilename(name);
    const content = emitCallback(callback);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate typedef files
  for (const [name, typedef] of idl.typedefs) {
    const filename = getTypedefFilename(name);
    const content = emitTypedef(typedef, idl);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate enum files
  for (const [name, enumDef] of idl.enums) {
    const filename = getEnumFilename(name);
    const content = emitEnum(enumDef);
    const filepath = path.join(OUTPUT_DIR, filename);

    console.log(`  Writing ${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
  }

  // Generate globals file
  const globalsContent = emitGlobals(idl);
  const globalsPath = path.join(OUTPUT_DIR, "globals.mbt");
  console.log("  Writing globals.mbt...");
  await fs.writeFile(globalsPath, globalsContent, "utf-8");
}

/**
 * Generate JavaScript runtime file
 */
async function generateJsRuntime(idl: ParsedIdl): Promise<void> {
  console.log("Generating JavaScript runtime...");

  const content = emitJsRuntime(idl);
  const filepath = path.join(OUTPUT_DIR, "webapi.mjs");

  await fs.writeFile(filepath, content, "utf-8");
}

/**
 * Main build function
 */
async function build(): Promise<void> {
  console.log("=== MoonBit DOM Bindings Generator ===\n");

  try {
    // Prepare output directory
    await prepareOutputDir();

    // Fetch and parse IDL
    const parsedIdls = await fetchIdl();

    // Merge all IDL
    console.log("\nMerging IDL definitions...");
    let mergedIdl = mergeIdl(parsedIdls);

    // Apply mixins BEFORE filtering so mixins are merged into core interfaces
    console.log("Applying mixins...");
    applyMixins(mergedIdl);

    // Filter to core interfaces (after mixins are applied)
    console.log("Filtering to core interfaces...");
    mergedIdl = filterToCoreInterfaces(mergedIdl);

    // Report what we're generating
    console.log(`\nGenerating bindings for:`);
    console.log(`  - ${mergedIdl.interfaces.size} interfaces`);
    console.log(`  - ${mergedIdl.dictionaries.size} dictionaries`);
    console.log(`  - ${mergedIdl.callbacks.size} callbacks`);
    console.log(`  - ${mergedIdl.typedefs.size} typedefs`);
    console.log(`  - ${mergedIdl.enums.size} enums`);

    // Collect and register property union types BEFORE registering other types
    // This allows mapIdlType to recognize them during interface generation
    console.log("Collecting property union types...");
    const propertyUnionTypes = collectPropertyUnionTypes(mergedIdl);
    registerCollectedUnionTypes(propertyUnionTypes);
    console.log(`  - ${propertyUnionTypes.size} property union types\n`);

    // Register dictionary and enum names for proper type mapping
    registerDictionaries(mergedIdl.dictionaries.keys());
    registerEnums(mergedIdl.enums.keys());

    // Copy template files
    await copyTemplates();

    // Generate MoonBit files
    await generateMoonBitFiles(mergedIdl, propertyUnionTypes);

    // Generate JS runtime
    await generateJsRuntime(mergedIdl);

    // Format generated files with moon fmt
    console.log("Formatting generated files...");
    const { execSync } = await import("node:child_process");
    const webapiDir = path.resolve(OUTPUT_DIR, "..");
    execSync("moon fmt", { cwd: webapiDir, stdio: "inherit" });

    console.log("\n=== Build complete! ===");
    console.log(`Output directory: ${OUTPUT_DIR}`);

  } catch (err) {
    console.error("\nBuild failed:", err);
    process.exit(1);
  }
}

// Run build
build();
