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
import { minify } from "terser";

import { parseIdl, mergeIdl, applyMixins } from "./widlprocess.js";
import type { ParsedIdl } from "./types.js";
import { registerDictionaries, registerEnums, registerAbstractInterface } from "./mapping.js";
import {
  emitInterface,
  getInterfaceFilename,
  hasRealConstructor,
  isFullyAbstract,
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
import {
  classifyType,
  getPackageInfo,
  getPackageDependencies,
  getPackagesInDependencyOrder,
  getMdnUrl,
  type PackageName,
} from "./packages.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = path.resolve(__dirname, "..");
const OUTPUT_DIR = path.join(PROJECT_ROOT, "src");
const IDL_OUTPUT_DIR = path.join(PROJECT_ROOT, "webapi-gen", "enabled-idls");
const TEMPLATES_DIR = path.join(PROJECT_ROOT, "webapi-gen", "base.mbt");

/**
 * Abstract base interfaces that are never instantiated directly.
 * These types use trait objects instead of external types.
 * Only base classes in an inheritance hierarchy go here.
 * 
 * Types like Window/Navigator are NOT abstract - they have instances
 * (created by the browser), just no user-accessible constructor.
 * 
 * Types like Event/EventTarget DO have constructors and are NOT abstract.
 * 
 * Types with [HTMLConstructor] (like HTMLElement) get external type but no new().
 */
const ABSTRACT_BASE_INTERFACES = new Set([
  // Core DOM hierarchy (never used directly, always via subtypes)
  "Node",
  "Element",
  "CharacterData",
  // Note: HTMLElement has [HTMLConstructor] so it gets external type but no new()
]);

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
  "SVG",           // SVG elements (for SVGImageElement, etc.)
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
 * This set is extended dynamically with interfaces referenced in typedef unions
 */
let CORE_INTERFACES = new Set([
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
 * Recursively collect interface names from typedef unions
 * This ensures that interfaces referenced in union types are included
 */
function collectInterfacesFromTypedefs(idl: ParsedIdl, typedefNames: Set<string>): Set<string> {
  const interfaces = new Set<string>();
  const visited = new Set<string>();

  function collectFromTypedef(name: string) {
    if (visited.has(name)) return;
    visited.add(name);

    const typedef = idl.typedefs.get(name);
    if (!typedef || typedef.type.type !== "union" || !typedef.type.memberTypes) {
      return;
    }

    for (const member of typedef.type.memberTypes) {
      if (member.type === "reference" && member.name) {
        const memberName = member.name;
        // If it's another typedef union, recurse
        if (idl.typedefs.has(memberName)) {
          const nestedTypedef = idl.typedefs.get(memberName)!;
          if (nestedTypedef.type.type === "union") {
            collectFromTypedef(memberName);
          }
        }
        // If it's an interface, add it
        else if (idl.interfaces.has(memberName)) {
          interfaces.add(memberName);
        }
      }
    }
  }

  for (const name of typedefNames) {
    collectFromTypedef(name);
  }

  return interfaces;
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

  // Typedefs we want to generate (event handlers, union types, etc.)
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

  // Collect interfaces referenced in typedef unions and add them to CORE_INTERFACES
  const typedefInterfaces = collectInterfacesFromTypedefs(idl, GENERATED_TYPEDEFS);
  for (const name of typedefInterfaces) {
    CORE_INTERFACES.add(name);
  }

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

  // Keep typedefs that we want to generate
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
 * Create package moon.pkg.json
 */
async function createPackageJson(pkg: PackageName, pkgDir: string): Promise<void> {
  const deps = getPackageDependencies(pkg);
  const imports = deps.map(dep => `bikallem/webapi/${dep}`);
  
  const config = {
    import: imports.length > 0 ? imports : undefined,
    "supported-targets": ["js", "wasm-gc"],
    link: {
      "wasm-gc": {
        "use-js-builtin-string": true,
        "imported-string-constants": "_"
      }
    }
  };
  
  // Remove undefined fields
  const cleanConfig = JSON.parse(JSON.stringify(config));
  
  const filepath = path.join(pkgDir, "moon.pkg.json");
  await fs.writeFile(filepath, JSON.stringify(cleanConfig, null, 2) + "\n", "utf-8");
}

/**
 * Create package README.md with MDN links
 */
async function createPackageReadme(
  pkg: PackageName,
  pkgDir: string,
  types: Set<string>
): Promise<void> {
  const info = getPackageInfo(pkg);
  const sortedTypes = Array.from(types).sort();
  
  let content = `# ${pkg} package\n\n`;
  content += `${info.description}\n\n`;
  content += `## Types\n\n`;
  
  for (const typeName of sortedTypes) {
    const url = getMdnUrl(typeName, pkg);
    content += `- [\`${typeName}\`](${url})\n`;
  }
  
  content += `\n## See Also\n\n`;
  if (info.mdnCategory) {
    content += `- [MDN Web Docs - ${info.mdnCategory.replace(/_/g, ' ')}](https://developer.mozilla.org/en-US/docs/Web/${info.mdnCategory})\n`;
  }
  
  const filepath = path.join(pkgDir, "README.md");
  await fs.writeFile(filepath, content, "utf-8");
}

/**
 * Prepare package directories
 */
async function preparePackageDirectories(): Promise<Map<PackageName, string>> {
  console.log("Preparing package directories...");
  
  const packageDirs = new Map<PackageName, string>();
  
  for (const pkg of getPackagesInDependencyOrder()) {
    const pkgDir = path.join(OUTPUT_DIR, pkg);
    packageDirs.set(pkg, pkgDir);
    
    // Create package directory
    await fs.mkdir(pkgDir, { recursive: true });
    
    // Clean existing .mbt files in package directory
    try {
      const files = await fs.readdir(pkgDir);
      for (const file of files) {
        if (file.endsWith(".mbt")) {
          await fs.unlink(path.join(pkgDir, file));
        }
      }
    } catch (err) {
      // Directory might not exist yet, that's fine
    }
    
    // Create package configuration
    await createPackageJson(pkg, pkgDir);
    
    console.log(`  Created ${pkg}/ package`);
  }
  
  return packageDirs;
}

/**
 * Ensure output directory exists and is clean
 */
async function prepareOutputDir(): Promise<void> {
  console.log(`Preparing output directory at ${OUTPUT_DIR}...`);

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
 * Copy template files to appropriate packages
 */
async function copyTemplates(packageDirs: Map<PackageName, string>): Promise<void> {
  console.log("Copying template files...");

  // Map template files to their target packages
  const templateMapping: Record<string, PackageName> = {
    "js_value.mbt": "core",
    "js_promise.mbt": "core",
    "js_array.mbt": "core",
    "primitives.mbt": "core",
    "event_listener.mbt": "dom",
    "typed_arrays.mbt": "core",
  };

  for (const [file, pkg] of Object.entries(templateMapping)) {
    const src = path.join(TEMPLATES_DIR, file);
    const pkgDir = packageDirs.get(pkg)!;
    const dst = path.join(pkgDir, file);
    console.log(`  Copying ${file} to ${pkg}/...`);
    await fs.copyFile(src, dst);
  }
}

/**
 * Generate all MoonBit files into packages
 */
async function generateMoonBitFiles(
  idl: ParsedIdl,
  propertyUnionTypes: Map<string, import("./emitter/index.js").CollectedUnionType>,
  packageDirs: Map<PackageName, string>
): Promise<void> {
  console.log("Generating MoonBit files...");

  // Reset IDL output directory
  await fs.rm(IDL_OUTPUT_DIR, { recursive: true, force: true });
  await fs.mkdir(IDL_OUTPUT_DIR, { recursive: true });

  // Reset the union traits tracker before generating interfaces
  // This prevents duplicates from shared mixins (e.g., CanvasPath)
  resetEmittedUnionTraits();
  
  // Track types per package for README generation
  const packageTypes = new Map<PackageName, Set<string>>();
  for (const pkg of getPackagesInDependencyOrder()) {
    packageTypes.set(pkg, new Set());
  }

  // Helper to write IDL source to separate files
  const writeIdlSource = async (name: string, idlSource?: string) => {
    if (!idlSource || idlSource.trim() === "") return;
    const idlPath = path.join(IDL_OUTPUT_DIR, `${name}.idl`);
    await fs.writeFile(idlPath, idlSource.trim() + "\n", "utf-8");
  };

  // Generate property union type files FIRST so they're available for interfaces
  for (const [name, unionType] of propertyUnionTypes) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getPropertyUnionTypeFilename(name);
    const content = emitPropertyUnionType(unionType, idl);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);
  }

  // Generate interface files
  for (const [name, iface] of idl.interfaces) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getInterfaceFilename(name);
    const content = emitInterface(iface, idl);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);

    await writeIdlSource(name, iface.idlSource);
  }

  // Generate dictionary files
  for (const [name, dict] of idl.dictionaries) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getDictionaryFilename(name);
    const content = emitDictionary(dict);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);

    await writeIdlSource(name, dict.idlSource);
  }

  // Generate callback files
  for (const [name, callback] of idl.callbacks) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getCallbackFilename(name);
    const content = emitCallback(callback);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);

    await writeIdlSource(name, callback.idlSource);
  }

  // Generate typedef files
  for (const [name, typedef] of idl.typedefs) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getTypedefFilename(name);
    const content = emitTypedef(typedef, idl);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);

    await writeIdlSource(name, typedef.idlSource);
  }

  // Generate enum files
  for (const [name, enumDef] of idl.enums) {
    const pkg = classifyType(name);
    const pkgDir = packageDirs.get(pkg)!;
    const filename = getEnumFilename(name);
    const content = emitEnum(enumDef);
    const filepath = path.join(pkgDir, filename);

    console.log(`  Writing ${pkg}/${filename}...`);
    await fs.writeFile(filepath, content, "utf-8");
    packageTypes.get(pkg)!.add(name);

    await writeIdlSource(name, enumDef.idlSource);
  }

  // Generate globals file (goes to dom package)
  const globalsContent = emitGlobals(idl);
  const globalsPath = path.join(packageDirs.get('dom')!, "globals.mbt");
  console.log("  Writing dom/globals.mbt...");
  await fs.writeFile(globalsPath, globalsContent, "utf-8");
  
  // Generate README for each package
  console.log("\nGenerating package READMEs...");
  for (const [pkg, types] of packageTypes) {
    if (types.size > 0) {
      const pkgDir = packageDirs.get(pkg)!;
      await createPackageReadme(pkg, pkgDir, types);
      console.log(`  Created ${pkg}/README.md (${types.size} types)`);
    }
  }
}

/**
 * Generate JavaScript runtime file
 */
async function generateJsRuntime(idl: ParsedIdl, packageDirs: Map<PackageName, string>): Promise<void> {
  console.log("Generating JavaScript runtime...");

  const content = emitJsRuntime(idl);
  // Put runtime in dom package as it's used by all DOM/HTML types
  const filepath = path.join(packageDirs.get('dom')!, "webapi.mjs");

  await fs.writeFile(filepath, content, "utf-8");

  // Also emit a minified runtime for distribution
  try {
    const result = await minify(content, { module: true });
    if (result.code) {
      const minPath = path.join(packageDirs.get('dom')!, "webapi.min.mjs");
      await fs.writeFile(minPath, result.code, "utf-8");
    }
  } catch (err) {
    console.warn("Warning: Failed to minify webapi.mjs", err);
  }
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

    // Register abstract base interfaces from our explicit list
    // These use trait objects (&TNode, &TElement) instead of external types
    // This must happen BEFORE type mapping so abstract types use trait objects
    console.log("Registering abstract base interfaces...");
    let abstractCount = 0;
    for (const name of ABSTRACT_BASE_INTERFACES) {
      if (mergedIdl.interfaces.has(name)) {
        registerAbstractInterface(name);
        abstractCount++;
      }
    }
    console.log(`  - ${abstractCount} abstract base interfaces (use trait objects)`);

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

    // Prepare package directories
    const packageDirs = await preparePackageDirectories();

    // Copy template files
    await copyTemplates(packageDirs);

    // Generate MoonBit files
    await generateMoonBitFiles(mergedIdl, propertyUnionTypes, packageDirs);

    // Generate JS runtime (goes to dom package as it needs to be accessible)
    await generateJsRuntime(mergedIdl, packageDirs);

    // Format generated files with moon fmt
    console.log("Formatting generated files...");
    const { execSync } = await import("node:child_process");
    const webapiDir = path.resolve(OUTPUT_DIR, "..");
    execSync("moon fmt", { cwd: webapiDir, stdio: "inherit" });

    console.log("\n=== Build complete! ===");
    console.log(`Output directory: ${OUTPUT_DIR}`);
    console.log("\nPackage structure:");
    for (const pkg of getPackagesInDependencyOrder()) {
      console.log(`  - ${pkg}/`);
    }

  } catch (err) {
    console.error("\nBuild failed:", err);
    process.exit(1);
  }
}

// Run build
build();
