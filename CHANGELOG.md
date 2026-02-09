# Changelog

## unreleased

### New Features

- **Support WebIDL namespaces** - Namespace definitions (e.g., `namespace CSS { ... }`) now flow through the full pipeline (parser → partial_merged → flattened_idl → emitter → JS runtime) instead of being skipped. Namespace members (operations, readonly attributes, constants) are emitted as static methods (`pub fn CSS::escape(...)`). The generated JS runtime includes corresponding namespace modules (`webapi_CSS: { escape: (ident) => CSS.escape(ident) }`).
- **Generate special operations (getter/setter/deleter)** - WebIDL special operations are now emitted instead of being skipped. Named operations (e.g. `Storage.getItem`, `NodeList.item`, `HTMLCollection.namedItem`) emit as regular method calls. Unnamed operations (e.g. `DOMStringMap` bracket access) emit using bracket notation (`obj[key]`, `obj[key] = value`, `delete obj[key]`) with synthetic method names (`get`, `set`, `delete_`). Unnamed getters always return `Option` to handle undefined. This adds ~31 new methods across Storage, NodeList, HTMLCollection, DOMStringMap, DOMTokenList, and many other interfaces.
- **Replace `JsPromise[T]` with `@js_async.Promise[T]`** - Promise-returning WebAPI methods (like `fetch`, `response.text()`, `blob.arrayBuffer()`) now return `@js_async.Promise[T]` from the `moonbitlang/async` package instead of the custom `JsPromise[T]` type. This lets users directly `await` promises using MoonBit's async syntax (`promise.wait()`), with full coroutine-based scheduling and cancellation support via `AbortController`.
- **Add wasm-gc target support** - The library now compiles for both `--target js` and `--target wasm-gc`. Each generated interface produces three files: shared code, JS FFI (`_js.mbt`), and wasm-gc FFI (`_wasm.mbt`), wired together via MoonBit conditional compilation (`targets` in `moon.pkg`).
- **Generate `webapi.mjs` JS runtime** - A JavaScript module is generated that provides the wasm import object for all interfaces, dictionaries, callbacks, primitives, and globals. Used to instantiate the wasm module at runtime.
- **Add wasm-gc canvas example** - A working example (`examples/counter/counter.wasm.html`) demonstrating wasm-gc compilation with the generated bindings.

### Bug Fixes

- **Fix closure wrapping for wasm-gc callbacks** - MoonBit closures are `funcref` on wasm-gc, not `externref`. Callback constructors now wrap user closures in `JsValue`-only parameter closures so `make_closure` can convert them to callable JS functions.
- **Fix String return type on wasm-gc** - String is `(ref extern)` (non-nullable) on wasm-gc but imports return `externref` (nullable). String-returning methods now go through `String?` + `.unwrap()` to emit `ref.as_non_null`.
- **Fix primitive `%identity` on wasm-gc** - `Bool`, `Int`, `Double` etc. are value types (`i32`/`f64`) on wasm-gc, not `externref`. Union arg trait impls for primitives now delegate to `TJsValue::to_js` instead of using `%identity`.
- **Escape JS reserved words in generated runtime** - Parameter names like `default`, `class`, `arguments`, `eval` are now prefixed with underscore in `webapi.mjs`.
- **Escape JS reserved words in `extern "js"` FFI declarations** - The same reserved word escaping (`arguments` → `_arguments`) is now also applied to JS parameter names in generated `extern "js"` FFI functions. Previously, `arguments` in strict mode (ES modules) caused runtime errors.
- **Quote hyphenated CSS property names** - CSS properties like `background-color` are now bracket-accessed (`obj["background-color"]`) instead of dot-accessed in the JS runtime.
- **Disambiguate overloaded methods in JS runtime** - Overloaded WebIDL methods (e.g., `fill` with different arities) now use suffixed import names (`fill`, `fill_2`) to avoid silent JS object key collisions.
- **Fix `is_undefined` using correct JS check** - Uses `value === undefined` instead of the null check.

### Examples & Testing

- **Add fetch example** - JS-only async/await demo using `@js_async.Promise::wait()` to fetch from user-entered URLs, with status, headers, and body display.
- **Add timers example** - Dual-target (JS + wasm-gc) demo of `setInterval`, `clearInterval`, and `setTimeout` using `Function::new` callbacks and `TimerHandler`.
- **Add storage example** - Dual-target (JS + wasm-gc) demo of `localStorage` with `setItem`, `getItem`, `removeItem`, and `clear` using generated bindings.
- **Add 6 new examples** - dom, events, url, classlist, element-ops, and forms examples, each with both JS and wasm-gc HTML entry points.
- **Add Playwright integration tests** - 89 tests covering all 11 examples (canvas, counter, fetch, timers, storage, + 6 others) across JS and wasm-gc targets.
- **Add CI workflow** - GitHub Actions workflow with type checking (js + wasm-gc), unit tests, example builds, and Playwright tests.
- **Update GitHub Pages deployment** - Deploy all 11 examples instead of just canvas and counter.

### Known Issues

- **`dispatch_event` with trait objects on wasm-gc** - Passing an `#external` type as a trait object (`&TEvent`) produces invalid wasm-gc code (`type error in fallthru[0] (expected (ref N), got externref)`). This is a MoonBit compiler bug ([moonbitlang/moonbit-docs#1123](https://github.com/moonbitlang/moonbit-docs/issues/1123)). Workaround: avoid `dispatch_event` on wasm-gc target.

### Code Generator Improvements

- **Add `SpecialOperationMethodEmit`** - New emit struct for unnamed special operations that generates bracket-notation JS (`obj[key]`, `obj[key] = value`, `delete obj[key]`). Named special operations reuse `RegularMethodEmit`.
- **Three-file split architecture** - `InterfaceMethodEmit` trait gains `ffi_emit_js()` and `ffi_emit_wasm()` methods. `mbt_code_gen_multi()` routes emit variants to shared/JS/wasm buffers.
- **Split base template files** - `js_value.mbt`, `primitives.mbt`, and `global.mbt` are each split into shared + JS + wasm-gc variants.
- **Extract `emit_wasm_ffi_with_return()` helper** - Centralizes the four-way wasm return-type dispatch (void/optional, String, valid stub, JsValue wrapper).
- **Extract `emit_js_ffi_with_return()` helper** - Centralizes the JS FFI return-type dispatch, eliminating duplication across 4 method emit types.
- **Render functions return String directly** - All render helpers changed from `fn(buf: StringBuilder) -> Unit` to `fn() -> String`, eliminating intermediate StringBuilder boilerplate.
- **Extract `variant_filename()` helper** - Safer FFI filename derivation replacing fragile `strip_suffix().unwrap_or("")` pattern.
- **Explicit typed array allowlist** - Replaced fragile `has_suffix("Array")` heuristic with an explicit list of valid wasm-gc stub return types.
- **Add multi-target render tests** - Tests for `is_undefined`, `empty`, `dictionary`, `callback`, `constructor`, `String` return, and overloaded method emit variants.

## v0.3.0

### Bug Fixes

- **Fix multi-level dictionary inheritance** - Dictionary types that inherit through multiple levels now correctly include all ancestor members. Previously, only the immediate parent's members were merged. This affects the UIEvents/DOM event init dictionary chain:
  - `EventModifierInit` now includes `EventInit` fields (`bubbles`, `cancelable`, `composed`) and `UIEventInit` fields (`view`, `detail`, `which`)
  - `MouseEventInit` now includes `EventInit`, `UIEventInit`, and `EventModifierInit` fields
  - `WheelEventInit`, `DragEventInit`, `KeyboardEventInit`, `FocusEventInit`, `InputEventInit`, `CompositionEventInit` similarly gain their full ancestor fields

### Code Generator Improvements

- **Replace yacc-generated parser with hand-written recursive descent** - The WebIDL parser no longer depends on `moonbitlang/yacc`. The new parser is faster and easier to maintain.
- **Extract `type_mapping` package** - Type resolution logic (WebIDL-to-MoonBit type mapping) is now in its own `type_mapping/` package, separated from code rendering in `emit/`.
- **Introduce `FlattenedInterface` type** - Decouples the flattened IDL representation from the partial-merged intermediate form, preventing unintended mutation of pipeline inputs.
- **Extract render helpers from `mbt_code_gen`** - The monolithic 200-line code generator match is now a 40-line dispatcher calling focused render functions.
- **Split `InterfaceEmitter.emit` into helpers** - The 270-line method is now composed of `emit_constructor`, `emit_regular_operation`, `emit_attribute`, `emit_const_member`, and `emit_union_return_type`.
- **Replace `println`/`panic` with logger callbacks** - Pipeline stages use injected logger functions instead of direct I/O, improving testability.
- **Convert file-based snapshot tests to inline assertions** - Tests use `inspect()` and `@json.inspect()` instead of external snapshot files.
- **Convert `moon.pkg.json` to `moon.pkg` DSL format** - Package configs use the newer MoonBit package DSL.
- **Address all build warnings** in `webapi_gen`.
