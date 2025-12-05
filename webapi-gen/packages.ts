/**
 * Package Classification
 * 
 * Classifies Web IDL interfaces into packages following Option 1 architecture:
 * - core: Base types (JsValue, primitives, typed arrays)
 * - dom: DOM + Events (Node, Element, Event, EventTarget)
 * - html: HTML elements
 * - canvas: Canvas 2D API
 * - svg: SVG elements
 * - geometry: Geometry types (DOMRect, DOMMatrix, DOMPoint)
 * 
 * Package classification follows Web API specification categories:
 * - Each package corresponds to a major Web API category
 * - New WebIDL interfaces should be classified based on their spec category
 * - For interfaces from the DOM spec → dom package
 * - For interfaces from HTML spec that are HTML elements → html package
 * - For interfaces from Canvas spec → canvas package
 * - For interfaces from SVG spec → svg package
 * - For interfaces from Geometry spec → geometry package
 * - Base types and primitives → core package
 */

export type PackageName = 'core' | 'dom' | 'html' | 'canvas' | 'svg' | 'geometry';

export interface PackageInfo {
  name: PackageName;
  description: string;
}

/**
 * Core package: Base types and primitives
 */
const CORE_TYPES = new Set([
  // Base types
  'JsValue',
  'JsArray',
  'JsPromise',

  // Blob/File API
  'Blob',
  'File',
  'BlobPropertyBag',
  'EndingType',

  // Typed Arrays
  'ArrayBuffer',
  'DataView',
  'Int8Array',
  'Int16Array',
  'Int32Array',
  'Uint8Array',
  'Uint8ClampedArray',
  'Uint16Array',
  'Uint32Array',
  'BigInt64Array',
  'BigUint64Array',
  'Float32Array',
  'Float64Array',

  // Storage
  'Storage',
]);

/**
 * Geometry package: Geometry types
 */
const GEOMETRY_TYPES = new Set([
  'DOMMatrix',
  'DOMMatrixReadOnly',
  'DOMPoint',
  'DOMPointReadOnly',
  'DOMRect',
  'DOMRectReadOnly',
  'DOMQuad',
]);

/**
 * Canvas package: Canvas 2D API and related types
 */
const CANVAS_TYPES = new Set([
  'HTMLCanvasElement',
  'CanvasRenderingContext2D',
  'CanvasGradient',
  'CanvasPattern',
  'OffscreenCanvas',
  'OffscreenCanvasRenderingContext2D',
  'ImageBitmap',
  'ImageBitmapRenderingContext',
  'ImageData',
  'TextMetrics',
  'Path2D',
]);

/**
 * SVG package: SVG elements
 */
const SVG_TYPES = new Set([
  'SVGImageElement',
  'SVGElement',
  'SVGGraphicsElement',
  'SVGSVGElement',
]);

/**
 * HTML package: HTML elements (excluding HTMLCanvasElement which is in canvas)
 * Note: HTMLCollection is in dom package since DOM APIs like getElementsByTagName return it
 */
const HTML_TYPES = new Set([
  'HTMLElement',
  'HTMLAnchorElement',
  'HTMLAudioElement',
  'HTMLBodyElement',
  'HTMLButtonElement',
  'HTMLDivElement',
  'HTMLFormElement',
  'HTMLHeadElement',
  'HTMLHtmlElement',
  'HTMLImageElement',
  'HTMLInputElement',
  'HTMLLinkElement',
  'HTMLParagraphElement',
  'HTMLScriptElement',
  'HTMLSlotElement',
  'HTMLSpanElement',
  'HTMLStyleElement',
  'HTMLVideoElement',
  'HTMLCollection',
]);

/**
 * DOM package: Core DOM + Events (merged to avoid cyclic dependency)
 */
const DOM_TYPES = new Set([
  // Core DOM
  'Node',
  'Element',
  'Document',
  'DocumentFragment',
  'DocumentType',
  'Attr',
  'CharacterData',
  'Text',
  'Comment',
  'CDATASection',
  'ProcessingInstruction',

  // Collections
  'NodeList',
  'NamedNodeMap',
  'DOMTokenList',

  // Range and selection
  'Range',
  'Selection',
  'StaticRange',

  // Shadow DOM
  'ShadowRoot',

  // Mutation Observer
  'MutationObserver',
  'MutationRecord',

  // Events (merged with DOM to avoid cycle)
  'EventTarget',
  'Event',
  'CustomEvent',
  'UIEvent',
  'MouseEvent',
  'KeyboardEvent',
  'FocusEvent',
  'InputEvent',
  'WheelEvent',
  'DragEvent',
  'CompositionEvent',
  'ClipboardEvent',
  'TouchEvent',
  'PointerEvent',

  // Browser/Window (part of DOM as they are global interfaces)
  'Window',
  'Document',
  'Location',
  'History',
  'Navigator',
]);

/**
 * Classify an interface/dictionary/enum into a package
 */
export function classifyType(name: string): PackageName {
  // Check in order of specificity
  if (CORE_TYPES.has(name)) return 'core';
  if (GEOMETRY_TYPES.has(name)) return 'geometry';
  if (SVG_TYPES.has(name)) return 'svg';
  if (CANVAS_TYPES.has(name)) return 'canvas';
  if (HTML_TYPES.has(name)) return 'html';
  if (DOM_TYPES.has(name)) return 'dom';

  // Classify by naming patterns
  if (name.startsWith('HTML')) return 'html';
  if (name.startsWith('SVG')) return 'svg';
  if (name.startsWith('Canvas') || name.startsWith('Image')) return 'canvas';
  if (name.startsWith('DOM') && (name.includes('Matrix') || name.includes('Point') || name.includes('Rect') || name.includes('Quad'))) {
    return 'geometry';
  }

  // Event-related types go to dom
  if (name.includes('Event') || name === 'EventTarget' || name === 'EventListener') {
    return 'dom';
  }

  // Default to dom for unknown types
  return 'dom';
}

/**
 * Get package information
 */
export function getPackageInfo(pkg: PackageName): PackageInfo {
  const packageInfoMap: Record<PackageName, PackageInfo> = {
    core: {
      name: 'core',
      description: 'Core types and primitives (JsValue, Blob, typed arrays)',
    },
    dom: {
      name: 'dom',
      description: 'DOM Core and Events (Node, Element, Document, Event, EventTarget)',
    },
    html: {
      name: 'html',
      description: 'HTML elements (HTMLElement and subclasses)',
    },
    canvas: {
      name: 'canvas',
      description: 'Canvas 2D API (CanvasRenderingContext2D, OffscreenCanvas, ImageBitmap)',
    },
    svg: {
      name: 'svg',
      description: 'SVG elements',
    },
    geometry: {
      name: 'geometry',
      description: 'Geometry types (DOMRect, DOMMatrix, DOMPoint)',
    },
  };

  return packageInfoMap[pkg];
}

/**
 * Get package dependencies
 */
export function getPackageDependencies(pkg: PackageName): PackageName[] {
  const dependencyMap: Record<PackageName, PackageName[]> = {
    core: [],
    geometry: ['core'],
    dom: ['core'],
    html: ['core', 'dom'],
    canvas: ['core', 'dom'],
    svg: ['core', 'dom'],
  };

  return dependencyMap[pkg];
}

/**
 * Get all packages in dependency order (packages that don't depend on others come first)
 */
export function getPackagesInDependencyOrder(): PackageName[] {
  return ['core', 'geometry', 'dom', 'html', 'canvas', 'svg'];
}

/**
 * Core types that need @core. prefix when used in non-core packages
 */
const CORE_TYPE_NAMES = new Set([
  'JsValue',
  'TJsValue',
  'JsArray',
  'JsPromise',
  'Blob',
  'TBlob',
  'File',
  'TFile',
  'BlobPropertyBag',
  'EndingType',
  'ArrayBuffer',
  'DataView',
  'Int8Array',
  'Int16Array',
  'Int32Array',
  'Uint8Array',
  'Uint8ClampedArray',
  'Uint16Array',
  'Uint32Array',
  'BigInt64Array',
  'BigUint64Array',
  'Float32Array',
  'Float64Array',
  'Storage',
  'TStorage',
]);

/**
 * Qualify a type name with package prefix if needed
 * @param typeName The type name to qualify
 * @param targetPackage The package the code is being generated for
 * @returns The qualified type name (e.g., "@core.JsValue" or just "JsValue" if in core)
 */
export function qualifyType(typeName: string, targetPackage: PackageName): string {
  if (targetPackage === 'core') {
    return typeName; // No prefix needed in core package
  }
  
  if (CORE_TYPE_NAMES.has(typeName)) {
    return `@core.${typeName}`;
  }
  
  // Check if it's a geometry type and we're not in geometry
  if (targetPackage !== 'geometry' && GEOMETRY_TYPES.has(typeName)) {
    return `@geometry.${typeName}`;
  }
  
  // Check if it's a DOM type and we're in html/canvas/svg
  if ((targetPackage === 'html' || targetPackage === 'canvas' || targetPackage === 'svg') && DOM_TYPES.has(typeName)) {
    return `@dom.${typeName}`;
  }
  
  return typeName;
}

/**
 * Get the package prefix for core types (empty string for core package)
 */
export function getCorePrefix(targetPackage: PackageName): string {
  return targetPackage === 'core' ? '' : '@core.';
}
