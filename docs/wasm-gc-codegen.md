# Wasm-GC Code Generation

This document explains how the code generator produces MoonBit bindings that compile for both the JS backend and the wasm-gc backend.

## Old Design: JS-Only

Previously, each WebIDL interface generated **one file** with FFI embedded inline:

```
abort_controller_interface.mbt
├── #external pub type AbortController
├── pub trait TAbortController: TJsValue { ... }
├── extern "js" fn abort_controller_signal_ffi(obj: JsValue)    ← JS FFI inline
│     -> JsValue = "(obj) => obj.signal"
└── impl TAbortController with signal(self) {                   ← Trait impl
      abort_controller_signal_ffi(TJsValue::to_js(self))
    }
```

The `extern "js"` syntax embeds JavaScript source code directly in MoonBit. This **only compiles for `--target js`** — the MoonBit compiler rejects it for wasm-gc.

The base types were also single files:

| File | Contents |
|------|----------|
| `js_value.mbt` | `JsValue` type + `extern "js" fn undefined/null/isNull` |
| `primitives.mbt` | `TJsValue` impls using `%identity` (works on JS, fails on wasm-gc) |
| `global.mbt` | `extern "js" fn document/window/navigator` |

The codegen pipeline produced one `Map[Filename, Code]` and wrote it out directly.

## New Design: Three-File Split

Each interface now produces three files:

| File | Contains | Compiles For |
|------|----------|-------------|
| `foo_interface.mbt` | Type def, trait, trait impls, constructors | All targets |
| `foo_interface_js.mbt` | `extern "js" fn ...` FFI declarations | JS only |
| `foo_interface_wasm.mbt` | `fn ... = "module" "func"` wasm imports | wasm-gc only |

### Pipeline Overview

```
WebIDL specs (@webref/idl)
    │
    ▼
Parser → AST → Flatten → Emit
    │
    ▼
mbt_code_gen_multi(emits)
    │
    ├──▶ shared buffer   → foo_interface.mbt      (all targets)
    ├──▶ js_ffi buffer   → foo_interface_js.mbt   (js only)
    └──▶ wasm_ffi buffer → foo_interface_wasm.mbt  (wasm-gc only)
    │
    ▼
moon.pkg          (conditional compilation targets)
webapi.mjs        (JS runtime import object for wasm-gc)
```

### The Key Insight: FFI Signatures Are Identical

The trait implementations in the shared file call FFI functions **by name**. Both backends define a function with the same MoonBit signature but different implementations:

```moonbit
// ─── abort_controller_interface.mbt (SHARED) ───
// Calls FFI by name — resolved at compile time to whichever backend is active
impl TAbortController with signal(self : Self) -> AbortSignal {
  abort_controller_signal_ffi(TJsValue::to_js(self))
}
```

```moonbit
// ─── abort_controller_interface_js.mbt (JS only) ───
extern "js" fn abort_controller_signal_ffi_js(obj : JsValue) -> JsValue =
  "(obj) => obj.signal"

fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal {
  abort_controller_signal_ffi_js(obj).unsafe_cast()
}
```

```moonbit
// ─── abort_controller_interface_wasm.mbt (wasm-gc only) ───
// Imported from webapi.mjs: get_signal: (obj) => obj.signal
fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal =
  "webapi_AbortController" "get_signal"
```

MoonBit's conditional compilation (`moon.pkg` targets) ensures only the right FFI file is included per target.

### How the JS Runtime (`webapi.mjs`) Fits In

On the JS backend, FFI is embedded as inline JavaScript strings. On wasm-gc, JavaScript must be provided externally as a wasm import object:

```javascript
// webapi.mjs (generated)
export const wasmImportObject = {
  JsValue: { undefined, null, isNull, isUndefined },
  webapi_Primitives: { boolToJs, intToJs, ... },
  webapi_Global: { document, window, navigator },

  webapi_AbortController: {
    new: () => new AbortController(),
    get_signal: (obj) => obj.signal,
    abort: (obj, reason) => obj.abort(reason)
  },
  webapi_Element: { ... },
  // ... 300+ interface modules
}
```

```html
<!-- Usage in HTML -->
<script type="module">
  import { wasmImportObject } from "webapi.mjs";

  const { instance } = await WebAssembly.instantiateStreaming(
    fetch("app.wasm"),
    wasmImportObject,
    { builtins: ["js-string"], importedStringConstants: "_" }
  );
  instance.exports._start();
</script>
```

### Conditional Compilation Wiring

The generated `moon.pkg` maps target-specific files:

```
options(
  targets: {
    "abort_controller_interface_js.mbt":   [ "js" ],
    "abort_controller_interface_wasm.mbt": [ "wasm-gc" ],
    "primitives_js.mbt":                   [ "js" ],
    "primitives_wasm.mbt":                 [ "wasm-gc" ],
    // ... ~600 entries
  },
)
```

Files without an entry (like `abort_controller_interface.mbt`) compile for all targets.

## Three Hard Problems and Their Solutions

### 1. Primitive Type Conversion

On the JS backend, everything is boxed — `Bool`, `Int`, `Double` are all JavaScript values. `%identity` converts them to `JsValue` for free.

On wasm-gc, `Bool` is `i32`, `Double` is `f64`, but `JsValue` is `externref`. You can't `%identity` between value types and reference types:

```
JS backend:       Bool (boxed JS value) ──%identity──▶ JsValue (JS value)     works
Wasm-gc backend:  Bool (i32)            ──%identity──▶ JsValue (externref)    type error
```

**Solution**: Split `primitives.mbt` into two files:

```moonbit
// primitives_js.mbt — %identity works because both are JS values
pub impl TJsValue for Bool with to_js(self) -> JsValue = "%identity"

// primitives_wasm.mbt — FFI call to JS: (v) => v !== 0
fn bool_to_js_ffi(v : Bool) -> JsValue = "webapi_Primitives" "boolToJs"
pub impl TJsValue for Bool with to_js(self) -> JsValue { bool_to_js_ffi(self) }
```

`String` is the exception — with `js-string-builtins`, String is `externref` on both backends, so `%identity` works in both.

### 2. The `externref` vs `(ref extern)` Mismatch for String Returns

This was the hardest bug. On wasm-gc with js-string-builtins, three types map to similar but incompatible wasm types:

| MoonBit Type | Wasm Type | Nullable? |
|-------------|-----------|-----------|
| `JsValue` | `externref` | Yes |
| `#external` types (Element, etc.) | `externref` | Yes |
| `String` | `(ref extern)` | **No** |

Wasm imports always return `externref` (nullable). But when a MoonBit function returns `String`, the compiler expects `(ref extern)` (non-nullable). `unsafe_cast` / `%identity` is a no-op in wasm — it cannot convert nullable to non-nullable:

```
Import returns:   externref       (nullable)
Function expects: (ref extern)    (non-nullable)
%identity:        no-op in wasm → validation error!
```

**Solution**: Go through `String?` (which MoonBit optimizes to `externref`) then `.unwrap()` which emits the `ref.as_non_null` instruction:

```moonbit
// externref → externref via %identity (both nullable, same wasm type)
fn jsvalue_as_nullable_string(v : JsValue) -> String? = "%identity"

// String? → String via unwrap (emits ref.as_non_null)
fn jsvalue_to_string(v : JsValue) -> String {
  jsvalue_as_nullable_string(v).unwrap()
}
```

For every String-returning method, the wasm FFI emits a two-layer wrapper:

```moonbit
// Raw import: returns JsValue (externref) — matches wasm import signature
fn element_get_tag_name_wasm(obj : JsValue) -> JsValue =
  "webapi_Element" "get_tagName"

// Wrapper: converts to String via the nullable trick
fn element_get_tag_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(element_get_tag_name_wasm(obj))
}
```

### 3. Callback / Closure Wrapping

On JS, closures are already JS values. `%identity` (via `js_of()`) converts `(Event) -> Unit` to `JsValue`.

On wasm-gc, a MoonBit closure is a `funcref` — not an `externref`. You can't pass it directly to JS. The MoonBit runtime provides `make_closure` to bind a funcref with its closure data into a callable JS function.

But there's a catch: `make_closure` only works when the closure's parameter types are all `JsValue` (externref). A closure typed `(Event) -> Unit` has a concrete parameter type, so we wrap it:

```moonbit
// JS backend — %identity, done
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener {
  event_listener_ffi_js(js_of(f)).unsafe_cast()
}

// Wasm-gc backend — wrap in JsValue-only closure
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  //  ↑ wrapper with JsValue params                ↑ cast back inside
  event_listener_ffi_wasm(w).unsafe_cast()
}
```

The wrapper closure has `JsValue` parameters, which `make_closure` can handle. When JS calls it, the `JsValue` arguments get cast back to the concrete types inside the wrapper.

## Code Generator Architecture

### Emit Trait for Interface Methods

Each method type implements the `InterfaceMethodEmit` trait with three code generation paths:

```moonbit
trait InterfaceMethodEmit {
  decl_emit(self)                            // Trait method signature       → shared
  impl_emit(self)                            // Trait implementation         → shared
  ffi_emit_js(self)                          // extern "js" FFI declaration  → js_ffi
  ffi_emit_wasm(self, module_name : String)  // wasm import declaration      → wasm_ffi
}
```

Five method types implement this trait:

| Type | Example |
|------|---------|
| `RegularMethodEmit` | `element.getAttribute(name)` |
| `StaticMethodEmit` | `URL.createObjectURL(blob)` |
| `AttributeGetMethodEmit` | `element.innerHTML` (getter) |
| `AttributeSetMethodEmit` | `element.innerHTML = ...` (setter) |
| `StaticAttributeGetMethodEmit` | `Node.ELEMENT_NODE` |

### Multi-Target Code Generation

```moonbit
pub struct MultiTargetCode {
  shared : String      // Type defs, traits, implementations
  js_ffi : String      // JS FFI declarations
  wasm_ffi : String    // Wasm-gc FFI declarations
}

pub fn mbt_code_gen_multi(emits : Array[Emit]) -> MultiTargetCode
```

Each `Emit` variant is classified:

| Emit Variant | Routing |
|-------------|---------|
| `External`, `ImplTJsValue`, `Enum`, `TypedefAlias`, `Const` | shared only |
| `ImplTrait`, `UnionArgTrait`, `UnionArgTraitImpl` | shared only |
| `InterfaceDefinition` | shared (trait + impls) + js_ffi + wasm_ffi |
| `IsUndefinedMethod`, `EmptyMethod` | shared (wrapper) + js_ffi + wasm_ffi |
| `DictionaryCreate`, `ConstructorMethod` | shared (wrapper) + js_ffi + wasm_ffi |
| `Callback` | shared (type def) + js_ffi + wasm_ffi |

### Emitter Driver

```moonbit
pub struct MultiTargetFiles {
  shared : Map[Filename, Code]      // Base filename
  js_ffi : Map[Filename, Code]      // Filename_js.mbt
  wasm_ffi : Map[Filename, Code]    // Filename_wasm.mbt
}

pub fn emit_all_multi(emitter, names) -> MultiTargetFiles
```

For each type name, calls `mbt_code_gen_multi()`, writes shared code unconditionally, and writes JS/wasm FFI files only when non-empty.

### JS Runtime Overload Disambiguation

WebIDL allows method overloading (e.g., `fill(fillRule)` and `fill(path, fillRule)`). In the generated code, overloads are disambiguated with numeric suffixes (`fill`, `fill_2`). The JS runtime must use the same suffixed names as property keys:

```javascript
webapi_CanvasRenderingContext2D: {
  fill: (obj, fill_rule) => obj.fill(fill_rule),
  fill_2: (obj, path, fill_rule) => obj.fill(path, fill_rule),  // distinct key
}
```

Without disambiguation, duplicate JS object keys cause the last one to silently win, binding the wrong function.

## Base Template File Split

| Old (JS-only) | New Shared | New JS | New Wasm-gc |
|---------------|-----------|--------|-------------|
| `js_value.mbt` | `js_value.mbt` (type, trait, `unsafe_cast`) | `js_value_js.mbt` (`extern "js"` for undefined/null/isNull, `js_of`) | `js_value_wasm.mbt` (wasm imports, `jsvalue_to_string` workaround) |
| `primitives.mbt` | — | `primitives_js.mbt` (all `%identity`) | `primitives_wasm.mbt` (FFI calls for value types, `%identity` for String) |
| `global.mbt` | `global.mbt` (`pub let document/window/navigator`) | `global_js.mbt` (`extern "js"` FFI) | `global_wasm.mbt` (wasm imports) |

Files that needed no splitting (already cross-target compatible):
- `js_array.mbt` — uses `= "JsArray" "empty"` syntax
- `js_promise.mbt` — uses `= "JsPromise" "await"` syntax
- `alias.mbt`, `typed_arrays.mbt`, `js_undefined.mbt` — only `%identity` between externref types

## Key Learnings

1. **`%identity` is a true no-op on wasm-gc** — it works between types that share the same wasm representation (`externref` to `externref`), but fails across `i32` to `externref` or `externref` to `(ref extern)`.

2. **Nullable vs non-nullable is a wasm-gc distinction invisible on JS** — the `String` vs `JsValue` mismatch causes no issues on JS but triggers wasm validation errors. The `String?` then `.unwrap()` trick bridges the gap by emitting `ref.as_non_null`.

3. **Overloaded methods need disambiguation in the JS runtime** — JavaScript object literals silently keep only the last duplicate key. The wasm import names (`fill`, `fill_2`) must match the JS runtime property keys exactly.

4. **Closure wrapping is unavoidable on wasm-gc** — `funcref` and `externref` are different wasm type hierarchies. The `make_closure` mechanism requires `JsValue`-typed parameters, forcing a wrapper pattern around user closures.

5. **The three-file split works because FFI signatures are uniform** — all FFI functions take `JsValue` and return `JsValue` (or valid stub types). The shared trait impl code is truly identical across backends — only the FFI binding mechanism differs.
