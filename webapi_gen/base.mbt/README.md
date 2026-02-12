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

### `js_promise.mbt`
Promise interop:
- `JsPromise[T]` - Opaque type for JS Promises
- `JsPromise::wait()` - Await a promise
- `TJsValue` implementation for `JsPromise[T]`

### `js_array.mbt`
Array interop:
- `JsArray` - Opaque type for JS arrays
- `JsArray::empty()`, `JsArray::push()` - Array operations
- `array_to_js()` - Convert MoonBit arrays to JS arrays
- `TJsValue` implementation for `Array[T]`

### `primitives.mbt`
`TJsValue` implementations for primitive types:
- `Bool`, `Int`, `Int64`, `Double`, `String`

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
