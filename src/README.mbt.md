# MoonBit WebAPI

Type-safe MoonBit bindings for Web Platform APIs, automatically generated from WebIDL specifications.

## Overview

This library provides MoonBit FFI bindings for browser APIs including:

- **DOM** - Document Object Model manipulation
- **HTML** - HTML elements and attributes  
- **Canvas 2D** - Graphics and drawing operations
- **Events** - User interaction and event handling
- **Fetch** - HTTP requests and responses
- **URL** - URL parsing and manipulation
- **XMLHttpRequest** - Legacy HTTP requests
- **SVG** - Scalable Vector Graphics
- **CSSOM** - CSS Object Model

All bindings are automatically generated from official WebIDL specifications, ensuring type safety and API completeness.

## Installation

Add this package to your MoonBit project:

```bash
moon add bikallem/webapi@0.3.0
```

## Quick Start

### Counter Example

A simple counter application demonstrating DOM manipulation and event handling:

```moonbit nocheck
///|
fn main {
  // Create mutable counter state
  let mut count = 0

  // Create count display element
  let count_display : @webapi.HTMLDivElement = @webapi.document
    .create_element("div")
    .into()
  count_display
  ..set_attribute("id", "count-display")
  ..set_attribute("style", "font-size: 3em; margin: 0.5em 0;")
  .set_text_content("0")

  // Update display function
  let update_display = fn() {
    count_display.set_text_content(count.to_string())
  }

  // Create increment button with click handler
  let increment_btn = @webapi.document.create_element("button")
  increment_btn
  ..set_text_content("+")
  .add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      count = count + 1
      update_display()
    }),
  )

  // Append to DOM
  let app = @webapi.document.get_element_by_id("app").unwrap()
  app.append_child(count_display) |> ignore
  app.append_child(increment_btn) |> ignore
}
```

### Canvas Drawing Example

Demonstrates the Canvas 2D API with gradients, shapes, and text:

```moonbit nocheck
///|
fn main {
  // Create canvas element
  let canvas : @webapi.HTMLCanvasElement = @webapi.document
    .create_element("canvas")
    .into()
  canvas..set_width(800)..set_height(500)
  @webapi.document.get_element_by_id("app").unwrap().append_child(canvas)
  |> ignore

  // Get 2D rendering context
  let ctx : @webapi.CanvasRenderingContext2D = canvas
    .get_context("2d")
    .unwrap()
    .into()

  // Create gradient
  let gradient = ctx.create_linear_gradient(0.0, 0.0, 0.0, 300.0)
  gradient..add_color_stop(0.0, "#1e3c72").add_color_stop(1.0, "#87CEEB")

  // Draw with gradient
  ctx..set_fill_style(gradient).fill_rect(0.0, 0.0, 800.0, 300.0)

  // Draw shapes (arc uses radians: 2π for full circle)
  ctx
  ..set_fill_style("#228B22")
  ..begin_path()
  ..arc(400.0, 250.0, 50.0, 0.0, @math.pi * 2.0)
  .fill()

  // Draw text
  ctx
  ..set_font("bold 24px sans-serif")
  ..set_fill_style("#FFFFFF")
  .fill_text("Hello, MoonBit!", 320.0, 400.0)
}
```

## API Patterns

### Global Objects

The library provides direct access to browser global objects:

```moonbit nocheck
// Access the document object
@webapi.document.get_element_by_id("my-id")

// Access the window object  
@webapi.window.inner_width()

// Access the navigator object
@webapi.navigator.user_agent()
```

### Type Casting with `into()`

DOM elements are returned as generic `Element` types. Use `into()` to cast to specific element types:

```moonbit nocheck
// Create an element and cast to specific type

///|
let canvas : @webapi.HTMLCanvasElement = @webapi.document
  .create_element("canvas")
  .into()

// Cast to access type-specific methods

///|
let ctx : @webapi.CanvasRenderingContext2D = canvas
  .get_context("2d")
  .unwrap()
  .into()
```

### Event Handling

Create event listeners using the `EventListener::new` constructor:

```moonbit nocheck
element.add_event_listener(
  "click",
  @webapi.EventListener::new(fn(event) {
    // Handle click event
    println("Clicked!")
  }),
)
```

### Method Chaining

Most setter methods return `Unit`, enabling method chaining with `..` (use `.` for the last call in the chain):

```moonbit nocheck
element
..set_attribute("id", "my-element")
..set_attribute("class", "container")
.set_text_content("Hello!")
```

### Optional Parameters

Many methods have optional parameters using MoonBit's `?` syntax:

```moonbit nocheck
// With default options
document.create_element("div")

// With explicit options
document.create_element("div", options=ElementCreationOptions::new(is="custom-div"))
```

## WebIDL to MoonBit Conversion

This library is automatically generated from WebIDL specifications using a custom code generator written in MoonBit. The generator transforms WebIDL definitions into idiomatic MoonBit code.

### Type Mappings

| WebIDL Type | MoonBit Type |
|-------------|--------------|
| `DOMString`, `USVString` | `String` |
| `boolean` | `Bool` |
| `long`, `short` | `Int` |
| `unsigned long` | `UInt` |
| `long long` | `Int64` |
| `double`, `float` | `Double`, `Float` |
| `any`, `object` | `JsValue` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| `T?` (nullable) | `T?` (Option) |

### Interface Generation

WebIDL interfaces are converted to MoonBit traits and external types:

**WebIDL:**
```webidl
interface Element : Node {
  attribute DOMString id;
  DOMString? getAttribute(DOMString name);
  undefined setAttribute(DOMString name, DOMString value);
};
```

**Generated MoonBit:**
```moonbit nocheck
// External type wrapping JavaScript object

///|
#external
pub type Element

// Trait defining interface methods

///|
pub trait TElement: TNode {
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  get_attribute(self : Self, name : String) -> String? = _
  set_attribute(self : Self, name : String, value : String) -> Unit = _
}

// Implementation using FFI

///|
extern "js" fn element_get_attribute_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.getAttribute(name)"

///|
impl TElement with get_attribute(self : Self, name : String) -> String? {
  let result = element_get_attribute_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
```

### Enum Generation

WebIDL enums become MoonBit enums with string conversion:

**WebIDL:**
```webidl
enum ShadowRootMode { "open", "closed" };
```

**Generated MoonBit:**
```moonbit nocheck
///|
pub(all) enum ShadowRootMode {
  Open
  Closed
} derive(Eq, Show)

///|
pub impl TJsValue for ShadowRootMode with to_js(self : ShadowRootMode) -> JsValue {
  match self {
    ShadowRootMode::Open => TJsValue::to_js("open")
    ShadowRootMode::Closed => TJsValue::to_js("closed")
  }
}

///|
pub fn ShadowRootMode::from(value : String) -> ShadowRootMode? {
  match value {
    "open" => Some(ShadowRootMode::Open)
    "closed" => Some(ShadowRootMode::Closed)
    _ => None
  }
}
```

### Dictionary Generation

WebIDL dictionaries become constructor functions:

**WebIDL:**
```webidl
dictionary EventInit {
  boolean bubbles = false;
  boolean cancelable = false;
};
```

**Generated MoonBit:**
```moonbit nocheck
///|
#external
pub type EventInit

///|
pub fn EventInit::new(bubbles? : Bool, cancelable? : Bool) -> EventInit {
  event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable))
}
```

### Inheritance

Interface inheritance is modeled using trait bounds:

```moonbit nocheck
// Element extends Node, which extends EventTarget
pub trait TElement: TNode { ... }
pub trait TNode: TEventTarget { ... }
pub trait TEventTarget { ... }

// Implementations chain correctly
pub impl TElement for Element
pub impl TNode for Element
pub impl TEventTarget for Element
```

## Examples

Browser examples demonstrating MoonBit WebAPI bindings. Each example has a JS target HTML file (`<name>.js.html`) and most also have a wasm-gc target (`<name>.wasm.html`).

| Example | Description |
|---------|-------------|
| canvas | 2D canvas drawing with shapes, gradients, and animation |
| classlist | Add/remove/toggle CSS classes via `DOMTokenList` |
| counter | Simple click counter (JS + wasm-gc) |
| dom | Create, modify, and remove DOM elements |
| element-ops | Insert, replace, and clone elements |
| events | Mouse, keyboard, and custom event handling |
| fetch | Async HTTP requests with `fetch()` |
| forms | Form input handling and validation |
| storage | `localStorage` get/set/remove/clear |
| timers | `setTimeout` and `setInterval` |
| url | URL parsing and manipulation |

### Running Examples

```bash
# Build examples
moon -C examples build --target js
moon -C examples build --target wasm-gc

# Serve from the repo root
npx serve .
# then open http://localhost:3000/examples/index.html
```

## Building from Source

### Prerequisites

- MoonBit toolchain (`moon`)
- Node.js and npm

### Commands

```bash
# Install npm dependencies (WebIDL specs)
npm install

# Generate bindings from WebIDL
cd webapi_gen && moon run cmd/main

# Type-check generated code
moon check --target js

# Format code
moon fmt
```

## Supported Specifications

The generator processes the following WebIDL specifications:

- DOM
- HTML
- Fetch
- URL
- XMLHttpRequest
- CSSOM
- CSSOM-View
- Geometry
- FileAPI
- Performance Timeline
- High Resolution Time
- Referrer Policy
- SVG
- Trusted Types
- UI Events

## License

Apache-2.0
