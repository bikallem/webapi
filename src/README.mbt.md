# MoonBit WebAPI

Type-safe MoonBit bindings for Web Platform APIs, automatically generated from WebIDL specifications. Targets both **JS** and **wasm-gc** backends.

## Table of Contents

- [Installation](#installation)
- [Overview](#overview)
- [Quick Start](#quick-start)
  - [Counter Example](#counter-example)
  - [WebSocket Example](#websocket-example)
  - [Canvas Drawing Example](#canvas-drawing-example)
- [Examples](#examples)
- [API Patterns](#api-patterns)
  - [Global Objects](#global-objects)
  - [Type Casting](#type-casting)
  - [Nullable Returns and `_opt` Methods](#nullable-returns-and-_opt-methods)
  - [Event Handling](#event-handling)
  - [Promises](#promises)
  - [Variadic Arguments](#variadic-arguments)
  - [Custom Elements](#custom-elements)
  - [Method Chaining](#method-chaining)
  - [Optional Parameters](#optional-parameters)
- [Trimming webapi.mjs for wasm-gc Production](#trimming-webapimjs-for-wasm-gc-production)
- [WebIDL to MoonBit Conversion](#webidl-to-moonbit-conversion)
  - [Type Mappings](#type-mappings)
  - [Interface Generation](#interface-generation)
  - [Enum Generation](#enum-generation)
  - [Dictionary Generation](#dictionary-generation)
  - [Inheritance](#inheritance)
- [Supported Specifications](#supported-specifications)
- [Building from Source](#building-from-source)
- [License](#license)

## Installation

Add this package to your MoonBit project:

```bash
moon add bikallem/webapi@0.4.3
```

To also install the `webapitrim` CLI tool (for trimming `webapi.mjs` in wasm-gc deployments):

```bash
moon add --bin bikallem/webapi
```

## Overview

This library provides MoonBit FFI bindings for browser APIs including:

- **DOM** - Document Object Model manipulation
- **HTML** - HTML elements, forms, media, and attributes
- **Canvas 2D** - Graphics and drawing operations
- **Events** - Mouse, keyboard, pointer, touch, and custom events
- **Fetch** - HTTP requests and responses
- **URL** - URL parsing and manipulation
- **WebSocket** - Real-time bidirectional communication
- **Storage** - localStorage and sessionStorage
- **SVG** - Scalable Vector Graphics
- **CSSOM** - CSS Object Model and viewport queries
- **Web Animations** - Keyframe animations API
- **IndexedDB** - Client-side structured storage
- **Streams** - Readable/writable streams
- **Notifications** - Desktop notifications
- **File API** - File reading and blob handling
- **Clipboard** - Clipboard read/write access
- **Intersection Observer** - Visibility detection
- **Resize Observer** - Element size monitoring
- **Performance** - High-resolution timing

All bindings are automatically generated from official WebIDL specifications, ensuring type safety and API completeness.

## Quick Start

### Counter Example

A simple counter application demonstrating DOM manipulation and event handling:

```moonbit nocheck
///|
fn readme_counter() -> Unit {
  let mut count = 0

  // Create count display element
  let count_display : HTMLDivElement = document()
    .create_element("div")
    .unsafe_into()
  count_display
  ..set_attribute("id", "count-display")
  .set_attribute("style", "font-size: 3em; margin: 0.5em 0;")
  count_display.set_text_content("0")

  fn update_display() {
    count_display.set_text_content(count.to_string())
  }

  // Create increment button — closures are accepted directly
  let increment_btn = document().create_element("button")
  increment_btn.set_text_content("+")
  increment_btn.add_event_listener("click", fn(_event) {
    count = count + 1
    update_display()
  })

  // Append to DOM
  let app : Element = document().get_element_by_id("app")
  app.append_child(count_display) |> ignore
  app.append_child(increment_btn) |> ignore
}
```

### WebSocket Example

Demonstrates WebSocket connections with event handler closures:

```moonbit nocheck
///|
fn readme_websocket() -> Unit {
  let socket = WebSocket::new("wss://echo.websocket.events")

  // Event handlers accept closures directly
  socket.set_onopen(fn(_e) { socket.send("Hello from MoonBit!") })

  socket.set_onmessage(fn(e) {
    let data : String = e.data().unsafe_into()
    println("Received: " + data)
  })
}
```

### Canvas Drawing Example

Demonstrates the Canvas 2D API with gradients, shapes, and text:

```moonbit nocheck
///|
fn readme_canvas() -> Unit {
  let canvas : HTMLCanvasElement = document()
    .create_element("canvas")
    .unsafe_into()
  canvas.set_width(800)
  canvas.set_height(500)
  let app : Element = document().get_element_by_id("app")
  app.append_child(canvas) |> ignore

  // Get 2D rendering context
  let ctx : CanvasRenderingContext2D = canvas
    .get_context("2d")
    .unwrap()
    .unsafe_into()

  // Create gradient and draw
  let gradient = ctx.create_linear_gradient(0.0, 0.0, 0.0, 300.0)
  gradient.add_color_stop(0.0, "#1e3c72")
  gradient.add_color_stop(1.0, "#87CEEB")
  ctx.set_fill_style(gradient)
  ctx.fill_rect(0.0, 0.0, 800.0, 300.0)

  // Draw text
  ctx.set_font("bold 24px sans-serif")
  ctx.set_fill_style("#FFFFFF")
  ctx.fill_text("Hello, MoonBit!", 320.0, 400.0)
}
```

## Examples

Browser examples demonstrating MoonBit WebAPI bindings. Each example targets both JS and wasm-gc backends. Click an example name to see the live demo.

| Example | Description |
|---------|-------------|
| [calculator](https://bikallem.github.io/webapi/examples/#calculator.js) | Interactive calculator with keyboard support |
| [canvas](https://bikallem.github.io/webapi/examples/#canvas.js) | 2D canvas drawing with shapes, gradients, and animation |
| [classlist](https://bikallem.github.io/webapi/examples/#classlist.js) | Add/remove/toggle CSS classes via `DOMTokenList` |
| [clipboard-apis](https://bikallem.github.io/webapi/examples/#clipboard-apis.js) | Read/write clipboard content |
| [console](https://bikallem.github.io/webapi/examples/#console.js) | Console API (log, warn, error, table) |
| [counter](https://bikallem.github.io/webapi/examples/#counter.js) | Simple click counter |
| [dom](https://bikallem.github.io/webapi/examples/#dom.js) | Create, modify, and remove DOM elements |
| [element-ops](https://bikallem.github.io/webapi/examples/#element-ops.js) | Insert, replace, and clone elements |
| [encoding](https://bikallem.github.io/webapi/examples/#encoding.js) | TextEncoder/TextDecoder for UTF-8 |
| [events](https://bikallem.github.io/webapi/examples/#events.js) | Mouse, keyboard, and custom event handling |
| [fetch](https://bikallem.github.io/webapi/examples/#fetch.js) | HTTP requests with `fetch()` |
| [fetch-async](https://bikallem.github.io/webapi/examples/#fetch-async.js) | Async fetch with `JsPromise` (JS only) |
| [file-api](https://bikallem.github.io/webapi/examples/#file-api.js) | File reading and blob creation |
| [forms](https://bikallem.github.io/webapi/examples/#forms.js) | Form input handling and validation |
| [fullscreen](https://bikallem.github.io/webapi/examples/#fullscreen.js) | Fullscreen API toggle |
| [geometry](https://bikallem.github.io/webapi/examples/#geometry.js) | DOMRect, DOMMatrix geometry types |
| [indexeddb](https://bikallem.github.io/webapi/examples/#indexeddb.js) | IndexedDB object store operations |
| [intersection-observer](https://bikallem.github.io/webapi/examples/#intersection-observer.js) | Lazy-load with visibility detection |
| [notifications](https://bikallem.github.io/webapi/examples/#notifications.js) | Desktop notification API |
| [performance](https://bikallem.github.io/webapi/examples/#performance.js) | High-resolution timing measurements |
| [pointerevents](https://bikallem.github.io/webapi/examples/#pointerevents.js) | Pointer event tracking |
| [resize-observer](https://bikallem.github.io/webapi/examples/#resize-observer.js) | Element resize monitoring |
| [screen-orientation](https://bikallem.github.io/webapi/examples/#screen-orientation.js) | Screen orientation detection |
| [selection-api](https://bikallem.github.io/webapi/examples/#selection-api.js) | Text selection and range handling |
| [storage](https://bikallem.github.io/webapi/examples/#storage.js) | localStorage get/set/remove/clear |
| [streams](https://bikallem.github.io/webapi/examples/#streams.js) | ReadableStream processing |
| [svg](https://bikallem.github.io/webapi/examples/#svg.js) | SVG element creation and manipulation |
| [timers](https://bikallem.github.io/webapi/examples/#timers.js) | `setTimeout` and `setInterval` |
| [todo](https://bikallem.github.io/webapi/examples/#todo.js) | Full todo app with persistence |
| [touch-events](https://bikallem.github.io/webapi/examples/#touch-events.js) | Multi-touch gesture handling |
| [url](https://bikallem.github.io/webapi/examples/#url.js) | URL parsing and manipulation |
| [vibration](https://bikallem.github.io/webapi/examples/#vibration.js) | Device vibration API |
| [web-animations](https://bikallem.github.io/webapi/examples/#web-animations.js) | Keyframe animations |
| [wc-counter](https://bikallem.github.io/webapi/examples/#wc-counter.js) | Custom elements with Shadow DOM |
| [wc-edit-word](https://bikallem.github.io/webapi/examples/#wc-edit-word.js) | Inline editable text web component |
| [websockets](https://bikallem.github.io/webapi/examples/#websockets.js) | WebSocket connect/send/receive |
| [xhr](https://bikallem.github.io/webapi/examples/#xhr.js) | XMLHttpRequest |

### Running Examples

```bash
# Build examples for both targets
make build-examples

# Generate trimmed webapi.mjs for wasm-gc examples
make trim-examples

# Serve from the repo root
npx serve .
# then open http://localhost:3000/examples/index.html
```

## API Patterns

### Global Objects

The library provides zero-argument accessors for browser global objects:

```moonbit nocheck
///|
fn readme_globals() -> Unit {
  // Access the document object
  let _ = document().get_element_by_id("my-id")

  // Access the window object
  let _ = window().inner_width()

  // Access the navigator object
  let _ = navigator().user_agent()
}
```

### Type Casting

DOM elements are returned as generic `Element` types. To cast to specific element types, you have two options:

#### Checked downcast with `try_into()` (recommended)

Returns `T?` — performs a runtime `instanceof` check. Returns `None` if the value is not of the expected type:

```moonbit nocheck
///|
fn readme_try_into() -> Unit {
  let element = document().create_element("canvas")

  // Safe: returns None if the element is not an HTMLCanvasElement
  match element.try_into() {
    Some(canvas : HTMLCanvasElement) => {
      let _ctx : CanvasRenderingContext2D = canvas.get_context("2d").unwrap().unsafe_into()
    }
    None => println("Not a canvas element")
  }
}
```

#### Unchecked downcast with `unsafe_into()`

Performs no runtime type check. If the underlying JS value is not of type `T`, this silently produces a value with an incorrect type, which can lead to undefined behavior (wrong methods called, silent data corruption, or runtime crashes):

```moonbit nocheck
///|
fn readme_unsafe_into() -> Unit {
  // Only use when you are certain of the type (e.g., you just created the element)
  let canvas : HTMLCanvasElement = document()
    .create_element("canvas")
    .unsafe_into()
  let _ctx : CanvasRenderingContext2D = canvas
    .get_context("2d")
    .unwrap()
    .unsafe_into()
}
```

> **Guideline:** Use `try_into()` when the type is uncertain (e.g., `querySelector` results, event targets, user-provided elements). Use `unsafe_into()` when you control the value's origin and know the exact type (e.g., immediately after `create_element`).

### Nullable Returns and `_opt` Methods

Methods that return a nullable interface type (e.g., `Element?`) have two variants:

- **`method_name()`** — Convenience trait method that returns the declared type (e.g., `Element`), panics if null. Works on all subtypes through trait inheritance.
- **`method_name_opt()`** — Returns `T?` (Option). Use when you need to handle the `None` case.

```moonbit nocheck
///|
fn readme_opt_methods() -> Unit {
  // Convenience: returns Element directly (panics if not found)
  let app = document().get_element_by_id("app")

  // Cast to a specific subtype with .unsafe_into():
  let canvas : HTMLCanvasElement = document()
    .get_element_by_id("my-canvas")
    .unsafe_into()

  // Works on subtypes too (e.g., ShadowRoot inherits query_selector from trait):
  // shadow.query_selector("[data-ref=display]")

  // _opt variant: returns Option for null-checking
  match document().get_element_by_id_opt("maybe-missing") {
    Some(el) => el.set_text_content("found")
    None => ()
  }

  ignore(app)
  ignore(canvas)
}
```

### Event Handling

Event listeners and handlers accept closures directly:

```moonbit nocheck
///|
fn readme_events() -> Unit {
  let element = document().create_element("button")

  // addEventListener with closure
  element.add_event_listener("click", fn(_event) { println("Clicked!") })
}
```

### Promises

Use `JsPromise` to chain async operations like `fetch()`:

```moonbit nocheck
///|
fn readme_promises() -> Unit {
  window()
  .fetch("https://api.example.com/data")
  .then(fn(response : Response) {
    response.text().then(fn(text : String) { Console::log([text]) }) |> ignore
  })
  .catch_(fn(_err) { Console::error(["Fetch failed"]) })
  |> ignore
}
```

On the JS backend, the `bikallem/webapi/js_promise` subpackage bridges `JsPromise` to MoonBit's `async` via `to_async_promise()`:

```moonbit nocheck
///|
async fn readme_fetch_async(url : String) -> Unit {
  let response : Response = @js_promise.to_async_promise(window().fetch(url)).wait()
  let text : String = @js_promise.to_async_promise(response.text()).wait()
  Console::log([text])
}
```

### Variadic Arguments

WebIDL variadic parameters map to `Array[&TJsValue]`, accepting any mix of JS-interop types:

```moonbit nocheck
///|
fn readme_variadic() -> Unit {
  Console::log(["count:", 42, true])
}
```

### Custom Elements

Register Web Components with `define_custom_element`. The `on_create` callback runs once per element — attach Shadow DOM, build the template, and wire events here:

```moonbit nocheck
///|
fn readme_custom_element() -> Unit {
  define_custom_element("my-greeting", fn(host) {
    let shadow = host.attach_shadow(ShadowRootInit::new(ShadowRootMode::Open))
    shadow.set_inner_html("<p>Hello from Shadow DOM!</p>")
  })
}
```

Optional lifecycle callbacks are available for `on_connected`, `on_disconnected`, `on_adopted`, and `on_attribute_changed`.

### Method Chaining

Most setter methods return `Unit`, enabling method chaining with `..` (use `.` for the last call in the chain):

```moonbit nocheck
///|
fn readme_chaining() -> Unit {
  let element = document().create_element("div")
  element..set_attribute("id", "my-element").set_attribute("class", "container")
  element.set_text_content("Hello!")
}
```

### Optional Parameters

Many methods have optional parameters using MoonBit's `?` syntax:

```moonbit nocheck
fn readme_optional() -> Unit {
  // With default options
  let _ = document().create_element("div")

  // With explicit options
  let _ = document().create_element(
    "div",
    options=ElementCreationOptions::new(is="custom-div"),
  )
}
```

## Trimming webapi.mjs for wasm-gc Production

The full `src/webapi.mjs` JS runtime (~8,400 lines) contains modules for every supported Web API. For **wasm-gc** deployments, the `webapitrim` tool produces a minimal version containing only the modules your `.wasm` binary actually imports — typically 500–1,000 lines (~90% smaller).

> **Note:** This tool is only relevant for the wasm-gc backend. The JS backend does not use `webapi.mjs`.

### Installing webapitrim

Install the `webapitrim` CLI via the MoonBit package manager:

```bash
moon add --bin bikallem/webapi
```

This installs the `webapitrim` binary to `~/.moon/bin/` (or your configured MoonBit bin directory).

### Usage

```bash
# Trim for a single wasm binary (output: webapi.mjs next to the .wasm file)
webapitrim path/to/app.wasm --source path/to/webapi.mjs

# Trim with explicit output path
webapitrim path/to/app.wasm --source path/to/webapi.mjs -o path/to/output.mjs
```

When building from source, you can also use the Makefile targets:

```bash
# Trim all built wasm-gc examples at once
make trim-examples

# Trim a single wasm binary
make trim WASM=path/to/app.wasm OUT=path/to/output.mjs
```

### HTML Setup

Point your wasm-gc HTML page at the trimmed file instead of the full bundle:

```html
<script type="module">
    import { wasmImportObject } from "./webapi.mjs";

    const { instance } = await WebAssembly.instantiateStreaming(
        fetch("./myapp.wasm"),
        wasmImportObject,
        { builtins: ["js-string"], importedStringConstants: "_" }
    );
    instance.exports._start();
</script>
```

### How It Works

`webapitrim` parses the wasm binary's import section to find which `webapi_` JS modules are referenced, then extracts only those modules (plus the shared `wasmImportObject` export) from the full `webapi.mjs`. No runtime behavior changes — just fewer unused modules shipped to the browser.

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
///|
#external
pub type Element

///|
pub trait TElement: TNode {
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  get_attribute(self : Self, name : String) -> String? = _
  set_attribute(self : Self, name : String, value : String) -> Unit = _
}

///|
impl TElement with get_attribute(self : Self, name : String) -> String? {
  element_get_attribute_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
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

## Supported Specifications

The generator processes the following WebIDL specifications:

clipboard-apis, console, cssom, cssom-view, dom, encoding, fetch, FileAPI, fullscreen, geometry, hr-time, html, IndexedDB, intersection-observer, notifications, performance-timeline, pointerevents, referrer-policy, requestidlecallback, resize-observer, screen-orientation, selection-api, storage, streams, SVG, touch-events, trusted-types, uievents, url, vibration, web-animations, webidl, websockets, xhr

## Building from Source

### Prerequisites

- MoonBit toolchain (`moon`)
- Node.js and npm

### Commands

```bash
# Install npm dependencies (WebIDL specs)
cd src/gen && npm install

# Full pipeline: generate, check, format, build, trim, test
make clean all

# Or individual steps:
make gen-test        # Run generator tests
make clean gen       # Regenerate bindings
make check           # Type-check both JS and wasm-gc targets
make fmt             # Format all code
make build-examples  # Build examples for both targets
make trim-examples   # Produce trimmed webapi.mjs per wasm-gc example
make test-playwright # Run end-to-end tests
```

## License

Apache-2.0
