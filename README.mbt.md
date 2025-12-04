# bikallem/webapi

MoonBit bindings for Web APIs (DOM, HTML, Canvas, Events, etc.)

## Features

- **Type-safe DOM manipulation** - Full type safety for DOM operations
- **Auto-generated from WebIDL** - Uses official W3C/WHATWG specifications
- **Trait-based inheritance** - Mirrors the DOM class hierarchy
- **Enum types** - Proper MoonBit enums for Canvas properties, scroll behaviors, etc.
- **Union types** - Type-safe unions (e.g., `StrokeStyle` accepts String, CanvasGradient, or CanvasPattern)
- **FFI-optimized** - Efficient JavaScript interop

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

## Canvas Example

```moonbit
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
| Interfaces | 64 | `Document`, `Element`, `HTMLCanvasElement`, `CanvasRenderingContext2D`, `CanvasGradient` |
| Dictionaries | 63 | `EventInit`, `ScrollOptions`, `DOMPointInit` |
| Enums | 38 | `CanvasLineJoin`, `ScrollBehavior`, `DocumentReadyState` |
| Union Types | 7 | `StrokeStyle`, `FillStyle`, `Canvas`, `RenderingContext` |
| Callbacks | 8 | `EventListener`, `MutationCallback` |
| Typedefs | 4 | `EventHandler` |

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
| `DOMString` | `String` |
| `boolean` | `Bool` |
| `long`, `short` | `Int` |
| `double` | `Double` |
| `any` | `JsValue` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| enum types | MoonBit `enum` |
| union types | External type + open trait |

### Union Types

WebIDL union types like `(DOMString or CanvasGradient or CanvasPattern)` are represented using:
- An **external type** (e.g., `StrokeStyle`) for the return type
- An **open trait** (e.g., `TStrokeStyle`) for setter parameters

```moonbit
// Getter returns the union type
let style : StrokeStyle = ctx.stroke_style()

// Setter accepts any type implementing the trait
ctx.set_stroke_style("red")           // String
ctx.set_stroke_style(gradient)        // CanvasGradient
ctx.set_stroke_style(pattern)         // CanvasPattern

// Downcast if needed
let color : String = style.into()
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

# Build the MoonBit project
make build

# Format code
make fmt
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
- **HTML** - HTML elements (HTMLDivElement, HTMLCanvasElement, etc.)
- **UI Events** - Mouse, keyboard, focus events
- **CSSOM** - CSS Object Model
- **CSSOM View** - Scrolling, viewport
- **Geometry** - DOMPoint, DOMRect, DOMMatrix

## License

Apache-2.0
