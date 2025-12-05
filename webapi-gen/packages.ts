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
 */

export type PackageName = 'core' | 'dom' | 'html' | 'canvas' | 'svg' | 'geometry';

export interface PackageInfo {
  name: PackageName;
  description: string;
  mdnCategory?: string;
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
      description: 'Core types and primitives (JsValue, Blob, typed arrays, AbortController)',
      mdnCategory: 'Web_APIs',
    },
    dom: {
      name: 'dom',
      description: 'DOM Core and Events (Node, Element, Document, Event, EventTarget)',
      mdnCategory: 'DOM',
    },
    html: {
      name: 'html',
      description: 'HTML elements (HTMLElement and subclasses)',
      mdnCategory: 'HTML',
    },
    canvas: {
      name: 'canvas',
      description: 'Canvas 2D API (CanvasRenderingContext2D, OffscreenCanvas, ImageBitmap)',
      mdnCategory: 'Canvas_API',
    },
    svg: {
      name: 'svg',
      description: 'SVG elements',
      mdnCategory: 'SVG',
    },
    geometry: {
      name: 'geometry',
      description: 'Geometry types (DOMRect, DOMMatrix, DOMPoint)',
      mdnCategory: 'Geometry_Interfaces',
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
 * Generate MDN URL for a type
 */
export function getMdnUrl(typeName: string, pkg: PackageName): string {
  const baseUrl = 'https://developer.mozilla.org/en-US/docs/Web/API';
  
  // Special cases
  if (typeName.startsWith('HTML') && typeName !== 'HTMLElement') {
    return `${baseUrl}/${typeName}`;
  }
  
  if (typeName.startsWith('SVG')) {
    return `${baseUrl}/${typeName}`;
  }
  
  if (typeName.startsWith('Canvas')) {
    return `${baseUrl}/${typeName}`;
  }
  
  // Default
  return `${baseUrl}/${typeName}`;
}
