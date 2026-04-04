# base.mbt - Core MoonBit FFI Types

This directory contains the foundational MoonBit types for JavaScript interop. These files are copied directly to the output directory during code generation and provide the core infrastructure that all generated DOM bindings depend on.

## Files

### `js_value.mbt`
Core type representing any JavaScript value. Includes:
- `JsValue` - Opaque type for any JS value
- `TJsValue` trait - All JS-interop types must implement this
- `JsValue::null()`, `JsValue::undefined()` - JS primitives
- `JsValue::unsafe_cast()`, `JsValue::as_option()` - Type casting helpers
- `opt_to_js()` - Convert `Option[T]` to JsValue
- `fn_to_js()` - Convert MoonBit functions to JS callbacks

### `async_promise.mbt`
Promise support via `moonbitlang/async`:
- `TJsValue` implementation for `@js_async.Promise[T]`

### `js_array.mbt`
Array interop:
- `JsArray` - Opaque type for JS arrays
- `#cfg(target="js")` / `#cfg(target="wasm-gc")` gated conversions in one file
- `JsArray::from_array()` / `JsArray::to_array()` conversions

### `primitives.mbt`
`TJsValue` implementations for primitive types:
- `Bool`, `Int`, `Int64`, `Double`, `String`
- backend-specific implementations are selected with `#cfg(...)` in the same file

### `event_listener.mbt`
The `EventListener` callback interface:
- `EventListener::new(f)` - Create from a function `(Event) -> Unit`
- `EventListener::null()`, `EventListener::is_null()` - Nullable support

## Why Manual Definitions?

These types are manually defined rather than auto-generated because:

1. **Foundation types** - `JsValue` and `TJsValue` are the foundation that all generated code depends on
2. **Special semantics** - Types like `JsArray` require special handling
3. **Callback interface** - `EventListener` is defined as a "callback interface" in WebIDL, requiring manual implementation for proper function wrapping
4. **Stability** - These core APIs rarely change and benefit from careful manual design

For backend-dependent behavior, the base templates use `#cfg(target="js")` and
`#cfg(target="wasm-gc")` directly inside the shared `.mbt` files instead of
maintaining parallel `*_js.mbt` / `*_wasm.mbt` template files.
