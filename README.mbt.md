# bikallem/webapi

MoonBit bindings for Web APIs (DOM, HTML, Canvas, Events, etc.)

## Features

### Type Safety & Code Generation
- **Type-safe DOM manipulation** - Full type safety for DOM operations
- **Auto-generated from WebIDL** - Uses official W3C/WHATWG specifications
- **Trait-based inheritance** - Mirrors the DOM class hierarchy
- **FFI-optimized** - Efficient JavaScript interop with precise type mappings

### Advanced Type Support
- **Enum types** - Proper MoonBit enums for Canvas properties, scroll behaviors, etc. with `from(String)` conversion
- **Interface constants** - WebIDL constants exposed as `pub const` (e.g., `ELEMENT_NODE`)
- **Typedef union types** - Type-safe unions with trait-based conversions (e.g., `CanvasImageSource` accepts HTMLCanvasElement, HTMLImageElement, or HTMLVideoElement)
- **Typed arrays** - Full support for JavaScript typed arrays (Float32Array, Uint8Array, etc.)

### Web Platform APIs
- **DOM Core** - Node, Element, Document, DocumentFragment, Attr, CharacterData, Text, Comment, CDATASection, DocumentType
- **Shadow DOM** - ShadowRoot, HTMLSlotElement, slots, content distribution
- **HTML Elements** - HTMLElement and 20+ specific elements (HTMLDivElement, HTMLCanvasElement, HTMLImageElement, HTMLVideoElement, HTMLAudioElement, HTMLFormElement, HTMLInputElement, HTMLButtonElement, etc.)
- **Canvas 2D** - CanvasRenderingContext2D, OffscreenCanvas, OffscreenCanvasRenderingContext2D, CanvasGradient, CanvasPattern, image drawing, paths, text rendering
- **Events** - Event, CustomEvent, UIEvent, MouseEvent, KeyboardEvent, FocusEvent, InputEvent, WheelEvent, DragEvent, event listeners
- **CSSOM** - CSS Object Model interfaces
- **CSSOM View** - Scrolling, viewport, coordinate systems (ScrollOptions, ScrollBehavior, ScrollIntoViewOptions)
- **Geometry** - DOMPoint, DOMPointReadOnly, DOMRect, DOMRectReadOnly, DOMMatrix, DOMMatrixReadOnly, DOMQuad
- **File API** - Blob, File
- **Typed Arrays** - Float32Array, Float64Array, Int8Array, Int16Array, Int32Array, Uint8Array, Uint8ClampedArray, Uint16Array, Uint32Array, BigInt64Array, BigUint64Array, ArrayBuffer, DataView
- **Abort/Control** - AbortController, AbortSignal
- **Collections** - NodeList, HTMLCollection, DOMTokenList, NamedNodeMap

## Installation

Add to your `moon.mod.json`:

```json
{
  "deps": {
    "bikallem/webapi": "0.1.0"
  }
}
```

## Quick Example

```mbt check
fn main {
  // Get document and create elements  
  let div = document.create_element("div")
  
  // Set attributes and content
  div.set_id("my-div")
  div.set_inner_html("<p>Hello from MoonBit!</p>")
  
  // Append to body
  document.body().append_child(div)
  
  // Add event listener
  div.add_event_listener("click", event_listener((event) {
    println("Clicked!")
  }))
}
```

## Shadow DOM Example

```mbt check

///|
fn create_web_component {
  let doc = document
  let host = doc.create_element("div")
  
  // Attach shadow root
  let shadow = host.attach_shadow({ mode: ShadowRootMode::Open, delegates_focus: false })
  
  // Add content to shadow DOM
  let style = doc.create_element("style")
  style.set_text_content(
    #|:host { display: block; padding: 10px; }
    #|slot { color: blue; }
    #|
  )
  shadow.append_child(style)
  
  // Add slot for content projection
  let slot = doc.create_element("slot")
  shadow.append_child(slot)
  
  doc.body().append_child(host)
}
```

## Canvas Example

```mbt check

///|
fn draw_canvas {
  let canvas : HTMLCanvasElement = document.get_element_by_id("canvas").unwrap()
  let ctx = canvas.get_context_2d().unwrap()
  
  // Type-safe enum properties
  ctx.set_line_join(CanvasLineJoin::Round)
  ctx.set_line_cap(CanvasLineCap::Butt)
  ctx.set_text_align(CanvasTextAlign::Center)
  
  // Type-safe union properties - accepts String, CanvasGradient, or CanvasPattern
  ctx.set_stroke_style("red")
  ctx.set_fill_style("blue")
  
  // Or use a gradient
  let gradient = ctx.create_linear_gradient(0.0, 0.0, 200.0, 0.0)
  gradient.add_color_stop(0.0, "red")
  gradient.add_color_stop(1.0, "blue")
  ctx.set_fill_style(gradient)
  
  // Typedef union - accepts HTMLCanvasElement, HTMLImageElement, or HTMLVideoElement
  let img : HTMLImageElement = document().create_element("img")
  ctx.draw_image(img, 0.0, 0.0)  // Type-safe, no JsValue!
  ctx.draw_image(canvas, 50.0, 50.0)  // Can also pass canvas
  
  // Drawing operations
  ctx.begin_path()
  ctx.arc(100.0, 100.0, 50.0, 0.0, 6.28318)
  ctx.fill()
}
```

## Generated Types

The bindings include:

| Category | Count | Examples |
|----------|-------|----------|
| Interfaces | 70 | `Document`, `Element`, `HTMLCanvasElement`, `CanvasRenderingContext2D`, `ShadowRoot` |
| Dictionaries | 66 | `EventInit`, `ScrollOptions`, `DOMPointInit`, `ShadowRootInit` |
| Enums | 39 | `CanvasLineJoin`, `ScrollBehavior`, `DocumentReadyState`, `ShadowRootMode` |
| Typedef Unions | 7 | `CanvasImageSource`, `ImageBitmapSource`, `HTMLOrSVGImageElement` |
| Typed Arrays | 13 | `Float32Array`, `Uint8Array`, `Int32Array`, `ArrayBuffer` |
| Callbacks | 8 | `EventListener`, `EventHandlerNonNull`, `MutationCallback` |

## Architecture

### Trait Hierarchy

DOM interfaces are represented as traits that mirror the inheritance hierarchy:

```
TEventTarget
    └── TNode
        ├── TDocument
        ├── TElement
        │   └── THTMLElement
        │       ├── THTMLDivElement
        │       ├── THTMLCanvasElement
        │       └── ...
        └── TCharacterData
            ├── TText
            └── TComment
```

### Type Mapping

| WebIDL | MoonBit |
|--------|---------|
| `DOMString`, `USVString`, `ByteString` | `String` |
| `boolean` | `Bool` |
| `byte` | `Int` |
| `octet` | `Byte` |
| `short` | `Int` |
| `unsigned short` | `UInt` |
| `long` | `Int` |
| `unsigned long` | `UInt` |
| `long long`, `bigint` | `Int64` |
| `unsigned long long` | `UInt64` |
| `float`, `unrestricted float` | `Float` |
| `double`, `unrestricted double` | `Double` |
| `any`, `object` | `JsValue` |
| `undefined` | `Unit` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| enum types | MoonBit `enum` |
| typedef unions | External type + trait |

### Enum Types

WebIDL enums are converted to MoonBit enums with a `from(String)` method for runtime conversion:

```mbt check

///|
pub enum CanvasLineCap {
  Butt
  Round
  Square
}

///|
pub fn CanvasLineCap::from(value : String) -> CanvasLineCap {
  match value {
    "butt" => Butt
    "round" => Round
    "square" => Square
    _ => abort("Invalid CanvasLineCap value")
  }
}

///|
pub fn CanvasLineCap::to_js(self : CanvasLineCap) -> JsValue {
  match self {
    Butt => "butt"
    Round => "round"
    Square => "square"
  }.to_js_string()
}
```

### Interface Constants

WebIDL interface constants are exposed as `pub const` values:

```mbt check

///|
// Node.ELEMENT_NODE, Node.TEXT_NODE, etc.
pub const ELEMENT_NODE : UInt = 1

///|
pub const ATTRIBUTE_NODE : UInt = 2

///|
pub const TEXT_NODE : UInt = 3

///|
pub const DOCUMENT_NODE : UInt = 9
```

### Typedef Union Types

WebIDL typedef unions like `typedef (HTMLCanvasElement or HTMLImageElement or HTMLVideoElement) CanvasImageSource` are represented using:
- An **external type** (e.g., `CanvasImageSource`) for the union
- A **trait** (e.g., `TCanvasImageSource`) for type conversion
- Trait implementations for each member type

```mbt check

///|
// typedef union generated as:
#external
pub type CanvasImageSource

///|
pub trait TCanvasImageSource {
  to_js(Self) -> JsValue
}

///|
pub impl TCanvasImageSource for HTMLCanvasElement with to_js(self) {
  ...
}

///|
pub impl TCanvasImageSource for HTMLImageElement with to_js(self) {
  ...
}

///|
pub impl TCanvasImageSource for HTMLVideoElement with to_js(self) {
  ...
}

///|
// Usage - function accepts &TCanvasImageSource parameter
fn use_canvas_image(ctx : CanvasRenderingContext2D, img : HTMLImageElement) {
  ctx.draw_image(img, 0.0, 0.0)        // HTMLImageElement
  ctx.draw_image(ctx.canvas(), 0.0, 0.0)  // HTMLCanvasElement
  // Both work - type-safe with no JsValue!
}
```

## Development

### Prerequisites

- Node.js 18+
- MoonBit toolchain

### Building

```bash
# Install dependencies
npm install

# Generate bindings from WebIDL
make gen

# Build, format, and update package info
make all
```

### Project Structure

```
├── webapi-gen/          # TypeScript code generator
│   ├── build.ts         # Main orchestrator
│   ├── widlprocess.ts   # WebIDL parser
│   ├── mapping.ts       # Type mapping
│   ├── emitter/         # Code emitters
│   └── enabled-idls/    # Extracted WebIDL snippets per type
├── webapi/dom/          # Generated MoonBit bindings
├── examples/            # Usage examples
└── Makefile
```

## License

Apache-2.0
