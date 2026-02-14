# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository generates **type-safe MoonBit bindings** for Web Platform APIs (DOM, HTML, Canvas, Events, Fetch, etc.) from WebIDL specifications. It consists of two main components:

1. **Generated MoonBit bindings** (`src/`) - FFI bindings for browser APIs, auto-generated from WebIDL
2. **Code generator** (`webapi_gen/`) - A MoonBit program that parses WebIDL and emits MoonBit code

## Essential Commands

**Use the Makefile** — it handles directory changes and multi-step operations correctly:

```bash
make gen-test       # Run generator tests (with --update for snapshots: cd webapi_gen && moon test --update)
make clean gen      # Clean ALL caches then regenerate bindings (ALWAYS clean before gen)
make check          # Type-check both JS and wasm-gc targets
make fmt            # Format all MoonBit code
make info           # Update .mbti interface files
make build-examples # Build examples for BOTH js and wasm-gc
make validate-wasm  # Validate all wasm-gc example binaries (fast, <2s)
make test-playwright # Run Playwright e2e tests
make all            # Full pipeline: gen → check → fmt → info → build-examples → validate-wasm → test-playwright
make clean          # Remove all build artifacts
```

For individual commands when needed:
```bash
# Install npm dependencies (WebIDL specs, from webapi_gen directory)
cd webapi_gen && npm install

# Inspect a specific wasm binary (useful for debugging wasm-gc issues)
wasm-tools validate path/to/file.wasm
wasm-tools print path/to/file.wasm > output.wat
```

## Architecture

### Code Generation Pipeline

```
WebIDL specs (@webref/idl) → Parser (webapi_gen/parser/) → AST → Emitter (webapi_gen/emit/) → MoonBit code (src/)
```

### Key Components

**webapi_gen/** - Code generator written in MoonBit:
- `parser/` - WebIDL lexer and parser, produces AST
- `flattened_idl/` - Flattens WebIDL inheritance hierarchies
- `partial_merged/` - Merges partial interfaces/dictionaries/mixins
- `type_registry/` - Tracks type relationships and mappings
- `emit/` - Code emitters (interfaces, enums, methods, JS runtime)
- `base.mbt/` - Core FFI types (`JsValue`, etc.) copied to output
- `config/` - Configuration from `config.toml` (spec list, exclusions, dictionary member injection)

**src/** - Generated bindings (DO NOT EDIT DIRECTLY):
- Interface types with trait definitions (e.g., `Element`, `TElement`)
- Enum types with string conversion methods
- Dictionary constructor functions
- FFI functions using `extern "js"`

### Core FFI Types (in base.mbt/)

- `JsValue` - Opaque type for any JavaScript value
- `TJsValue` - Trait all JS-interop types must implement (`to_js(Self) -> JsValue`)
- `FromJsAny` - Trait for converting `JsAny` back to concrete types (used by `JsPromise::then`)
- `JsAny` - Alias for `String`; used as wasm-gc FFI callback parameter type (externref-compatible)
- `JsPromise[T]` - JavaScript Promise with type-safe `then`/`catch_`/`finally_`
- `JsArray` - JavaScript array interop
- `JsObject` - Builder for plain JS objects with arbitrary string keys (e.g., keyframe objects)
- `EventListener` - Callback interface for event handlers

## Type Mappings (WebIDL → MoonBit)

| WebIDL | MoonBit |
|--------|---------|
| `DOMString`, `USVString` | `String` |
| `boolean` | `Bool` |
| `long`, `short` | `Int` |
| `unsigned long` | `UInt` |
| `double`, `float` | `Double`, `Float` |
| `any`, `object` | `JsValue` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| Nullable `T?` | `T?` (Option) |

## FFI Pattern

Generated interfaces follow this pattern:

```moonbit
///|
#external
pub type Element

///|
pub impl TJsValue for Element with to_js(self: Element) -> JsValue = "%identity"

///|
pub impl FromJsAny for Element with from_js_any(value : JsAny) -> Element = "%identity"

///|
pub trait TElement: TNode {
  get_attribute(self : Self, name : String) -> String? = _
}

///|
extern "js" fn element_get_attribute_ffi(obj : JsValue, name : JsValue) -> JsValue =
  "(obj, name) => obj.getAttribute(name)"

///|
impl TElement for Element with get_attribute(self, name) {
  let result = element_get_attribute_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) { None } else { Some(result.unsafe_cast()) }
}
```

### FromJsAny Pattern

Every generated type (`#external` interfaces, dictionaries, callbacks, typedefs, namespaces) gets a `FromJsAny` impl via `ImplFromJsAny` in the `Emit` enum. Enums get a custom impl using `from_unchecked(String)`. This enables type-safe `JsPromise[T]` resolution on wasm-gc.

**Where impls live:**
- Externref types (interfaces, etc.): `= "%identity"` — emitted by `ImplFromJsAny` in `emit.mbt`
- Enums: `from_unchecked(value)` — emitted inline by `render_enum()` in `emit.mbt`
- Primitives (Bool, Int, Double, etc.): JS target uses `%identity`, wasm-gc uses FFI helpers (`toBool`, `toInt`, etc.) in `webapi_JsPromise` JS module
- Base `#external` types (JsArray, typed arrays, alias types): `= "%identity"` in `base.mbt/` files

## Development Workflow

1. Modify code generator in `webapi_gen/`
2. `make gen-test` (or `cd webapi_gen && moon test --update`) to verify and update generator tests
3. `make clean gen` to regenerate bindings (**always clean first** — see Critical Caching Pitfall below)
4. `make check` to validate generated code for both targets
5. `make fmt` to format
6. `make info` to update `.mbti` interface files
7. `make build-examples` to build examples for **both** JS and wasm-gc
8. `make validate-wasm` to validate all wasm-gc binaries (**catches externref/nullability bugs fast**)
9. `make test-playwright` to run end-to-end tests

Or simply: `make clean all` to run the full pipeline.

## Release Checklist

- Update `README.mbt.md` (install version, code examples, any new APIs)
- Update `CHANGELOG.md`
- Bump version in `moon.mod.json`

## WebIDL Spec Roadmap

Specs are enabled via the `core_specs` list in `webapi_gen/config.toml`. To add a spec, append its filename (without `.idl`) and regenerate.

### Dictionary Member Injection

Some WebIDL specs split members across related dictionaries (e.g., `duration` lives on `OptionalEffectTiming`, not `EffectTiming`, even though browsers accept it on both). The `[dictionary_member_injection]` section in `config.toml` injects members from a source dictionary into a target dictionary before inheritance flattening. Members already present in the target are skipped. Injection happens in `flattened_idl.mbt` before `flatten_dictionary_members`, so inherited children automatically get the injected members too.

### Currently included

`clipboard-apis`, `console`, `cssom`, `cssom-view`, `dom`, `encoding`, `fetch`, `FileAPI`, `fullscreen`, `geometry`, `hr-time`, `html`, `IndexedDB`, `intersection-observer`, `notifications`, `performance-timeline`, `pointerevents`, `referrer-policy`, `requestidlecallback`, `resize-observer`, `screen-orientation`, `selection-api`, `storage`, `streams`, `SVG`, `touch-events`, `trusted-types`, `uievents`, `url`, `vibration`, `web-animations`, `webidl`, `websockets`, `xhr`

### Candidates for inclusion

#### Moderate value (more specialized)

| Spec | Key APIs | Notes |
|------|----------|-------|
| `webcodecs` | VideoEncoder, VideoDecoder, AudioEncoder | Video/audio encoding/decoding |
| `webaudio` | AudioContext, AudioNode | Web Audio API |
| `webgl1` / `webgl2` | WebGLRenderingContext | WebGL (large surface area) |
| `mediacapture-streams` | MediaStream, getUserMedia | Camera/mic access |
| `service-workers` | ServiceWorker, Cache | Offline support |
| `push-api` | PushManager, PushSubscription | Push notifications backend |
| `permissions` | Permissions | Query/request permissions |
| `screen-wake-lock` | WakeLock | Prevent screen sleep |
| `serial` | SerialPort | Serial port access |
| `webhid` | HID | Human interface devices |
| `webusb` | USB | USB device access |
| `webrtc` | RTCPeerConnection | Peer-to-peer communication |
| `entries-api` | FileSystemEntry | File drag-and-drop |
| `file-system-access` | FileSystemFileHandle | Native file picker |
| `mediastream-recording` | MediaRecorder | Audio/video recording |
| `image-capture` | ImageCapture | Camera still photos |
| `gamepad` | Gamepad | Game controller input |

## Important Notes

- **Dual target**: This library targets both JS (`--target js`) and wasm-gc (`--target wasm-gc`). Always check both targets.
- **Generated files**: Never edit files in `src/` directly; modify the generator instead
- **Pre-commit hooks**: Configure with `git config core.hooksPath .githooks`

### Critical: Generator Caching Pitfall

**Always use `make clean gen` (not just `cd webapi_gen && moon clean && moon run cmd/main`).**

There are THREE separate `_build` directories that can hold stale caches:
- `/home/blem/projects/webapi/_build` (root project — **this one is easy to miss**)
- `/home/blem/projects/webapi/webapi_gen/_build` (generator)
- `/home/blem/projects/webapi/examples/_build` (examples)

Cleaning only `webapi_gen/_build` is **not sufficient**. The root `_build` can also affect the generator output. The `make clean` target cleans all three. After editing generator code, **always** run `make clean` before `make gen`.

**Symptoms of stale cache**: Generated `src/` files don't reflect code changes even after `moon run cmd/main` succeeds. If this happens, verify all three `_build` directories are deleted.

### Critical: Always Build Both Example Targets

When building examples, always build **both** targets. `make build-examples` does this automatically. Missing the JS build causes all JS e2e tests to timeout.

### Playwright Test Timeout

Test timeout is set to **3 seconds** (`tests/playwright.config.ts`). No test should take longer — if it does, the code is broken (likely a missing build or runtime error preventing page load). A fast timeout ensures broken builds fail quickly rather than wasting minutes on 30s timeouts per test.

## wasm-gc Known Issues

All examples compile for both js and wasm-gc targets except `fetch-async` (requires async/await bridge, intentionally js-only).

**JsPromise `FromJsAny` trait (resolved)**: `JsPromise::then` now requires `T : FromJsAny` and uses `FromJsAny::from_js_any` instead of `%identity` cast. This correctly handles non-externref types on wasm-gc: Bool (i32), Double (f64), enums (GC types), and Unit. Primitive conversions use FFI helpers (`toBool`, `toInt`, `toDouble`, etc.) in the `webapi_JsPromise` JS module. `Promise<undefined>` is still mapped to `JsPromise[JsValue]` as a conservative choice — switching to `JsPromise[Unit]` is a future API-surface change (see `type_mapping.mbt` lines 282-285).

**Trait-typed default values**: Optional parameters with trait-typed defaults (`&TFoo = value`) are stripped to plain optionals. On wasm-gc, trait references compile to GC struct closures, and the compiler's default value thunk returns externref (incompatible with GC struct types). The code generator strips these defaults and uses `Option + match` with `JsValue::undefined()` for absent values instead.

**`JsValue::null()` defaults on non-nullable types (resolved)**: On wasm-gc, `JsValue::null()` returns `externref` (nullable), but string-typed aliases like `CSSOMString = String` map to `(ref extern)` (non-nullable). The MoonBit compiler generates a default-value thunk returning `(ref extern)` that internally calls the nullable `JsNull::null` import — this fails `wasm-tools validate`. The code generator in `method_args()` (`interface_emitter.mbt`) now strips `JsValue::null()` defaults for `Primitive(_)`, `Enum(_)`, **and `Other(_)`** types (the last catches type aliases). The parameter becomes a plain optional and `opt_to_js` sends `undefined` when absent. Use `make validate-wasm` after `make build-examples` to catch these issues early — it runs in <2 seconds vs 14+ seconds for Playwright.

**`externref` vs `(ref extern)` nullability on wasm-gc (resolved)**: On wasm-gc, `JsValue` maps to `externref` (nullable) and `JsAny`/`String` maps to `(ref extern)` (non-nullable). MoonBit's `unsafe_cast()` generates no wasm instructions — it cannot change nullability. To convert `externref` → `(ref extern)`, use the `jsvalue_to_jsany()` helper (defined in `base.mbt/js_value_wasm.mbt`) which uses the `String?` unwrap trick to emit `ref.as_non_null`. This is needed when passing JsValue results to `FromJsAny::from_js_any()` for primitive type conversions (Bool, Int, Double). See dictionary getter code in `emit.mbt` (`render_dictionary_getter_shared`). For `#external` types returned from wasm FFI imports, the pattern is: declare the FFI as returning `JsValue` (externref), then `.unsafe_cast()` to the target type (see `js_object_wasm.mbt` for an example).

**`unsigned long long` (UInt64) properties on wasm-gc (resolved)**: The JS runtime code generator now wraps return values of `LongLong`, `UnsignedLongLong`, and `Bigint` types with `BigInt()` in generated getters and methods (e.g., `get_version: (obj) => BigInt(obj.version)`). The `is_bigint_type` helper in `emit_js_runtime.mbt` detects these types and the `is_bigint` parameter on `emit_js_getter`/`emit_js_method`/`emit_js_namespace_getter`/`emit_js_namespace_method` controls wrapping.
