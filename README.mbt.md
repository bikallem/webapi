# bikallem/webapi

MoonBit bindings for Web APIs (DOM, HTML, Canvas, Events, etc.)

## Features

- **Type-safe DOM manipulation** - Full type safety for DOM operations
- **Auto-generated from WebIDL** - Uses official W3C/WHATWG specifications
- **Trait-based inheritance** - Mirrors the DOM class hierarchy
- **Enum types** - Proper MoonBit enums for Canvas properties, scroll behaviors, etc.
- **Typedef union types** - Type-safe unions with trait-based conversions (e.g., `CanvasImageSource` accepts HTMLCanvasElement, HTMLImageElement, or HTMLVideoElement)
- **Typed arrays** - Full support for JavaScript typed arrays (Float32Array, Uint8Array, etc.)
- **Shadow DOM** - Complete Shadow DOM API support
- **FFI-optimized** - Efficient JavaScript interop with precise type mappings

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

```moonbit
fn main {
  // Get document and create elements
  let doc = document()
  let div = doc.create_element("div")
  
  // Set attributes and content
  div.set_id("my-div")
  div.set_inner_html("<p>Hello from MoonBit!</p>")
  
  // Append to body
  doc.body().append_child(div)
  
  // Add event listener
  div.add_event_listener("click", fn(event) {
    println("Clicked!")
  })
}
```

## Shadow DOM Example

```mbt check

///|
fn create_web_component {
  let doc = document()
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
  let canvas : HTMLCanvasElement = document().get_element_by_id("canvas").unwrap()
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
| Interfaces | 69 | `Document`, `Element`, `HTMLCanvasElement`, `CanvasRenderingContext2D`, `ShadowRoot` |
| Dictionaries | 65 | `EventInit`, `ScrollOptions`, `DOMPointInit`, `ShadowRootInit` |
| Enums | 38 | `CanvasLineJoin`, `ScrollBehavior`, `DocumentReadyState`, `ShadowRootMode` |
| Typedef Unions | 6 | `CanvasImageSource`, `ImageBitmapSource`, `HTMLOrSVGImageElement` |
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
|--------|---------|----------|
| `DOMString` | `String` |
| `boolean` | `Bool` |
| `byte`, `octet` | `Byte` |
| `short` | `Int` |
| `unsigned short` | `UInt` |
| `long` | `Int` |
| `unsigned long` | `UInt` |
| `long long` | `Int64` |
| `unsigned long long` | `UInt64` |
| `float` | `Float` |
| `double` | `Double` |
| `any` | `JsValue` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| enum types | MoonBit `enum` |
| typedef unions | External type + trait |

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
│   └── emitter/         # Code emitters
├── webapi/dom/          # Generated MoonBit bindings
├── examples/            # Usage examples
└── Makefile
```

## Supported Specifications

- **DOM** - Core DOM interfaces (Node, Element, Document, etc.)
- **DOM Shadow** - Shadow DOM (ShadowRoot, slots, content distribution)
- **HTML** - HTML elements (HTMLDivElement, HTMLCanvasElement, etc.)
- **UI Events** - Mouse, keyboard, focus events
- **CSSOM** - CSS Object Model
- **CSSOM View** - Scrolling, viewport
- **Geometry** - DOMPoint, DOMRect, DOMMatrix
- **File API** - Blob, File interfaces
- **Typed Arrays** - JavaScript typed arrays (Float32Array, Uint8Array, etc.)

## License

Apache-2.0
