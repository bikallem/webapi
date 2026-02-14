# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository generates **type-safe MoonBit bindings** for Web Platform APIs (DOM, HTML, Canvas, Events, Fetch, etc.) from WebIDL specifications. It consists of two main components:

1. **Generated MoonBit bindings** (`src/`) - FFI bindings for browser APIs, auto-generated from WebIDL
2. **Code generator** (`webapi_gen/`) - A MoonBit program that parses WebIDL and emits MoonBit code

## Essential Commands

```bash
# Type-check MoonBit code (run frequently during development)
moon check --target js
moon check --target wasm-gc

# Format MoonBit code
moon fmt

# Update package interfaces after API changes
moon info --target js

# Run tests
moon test

# Run tests with snapshot updates
moon test --update

# Generate bindings (from webapi_gen directory)
cd webapi_gen && moon run cmd/main

# Install npm dependencies (WebIDL specs, from webapi_gen directory)
cd webapi_gen && npm install

# Validate wasm binaries (useful for debugging wasm-gc issues)
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
- `config/` - Configuration from `config.toml`

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
2. Run `cd webapi_gen && moon test --update` to verify and update generator tests
3. Run `cd webapi_gen && moon clean && moon run cmd/main` to regenerate bindings (clean first to avoid stale cache)
4. Run `moon check --target js && moon check --target wasm-gc` to validate generated code for both targets
5. Run `moon fmt` to format
6. Run `moon info --target js` to update `.mbti` interface files
7. Run `cd examples && moon build --target wasm-gc --release` to build wasm examples
8. Run `cd tests && npx playwright test` to run end-to-end tests

## Release Checklist

- Update `README.mbt.md` (install version, code examples, any new APIs)
- Update `CHANGELOG.md`
- Bump version in `moon.mod.json`

## WebIDL Spec Roadmap

Specs are enabled via the `core_specs` list in `webapi_gen/config.toml`. To add a spec, append its filename (without `.idl`) and regenerate.

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
- **Generator caching**: Always run `moon clean` in `webapi_gen/` before `moon run cmd/main` after editing generator code, to avoid stale cached binaries producing unchanged output
- **Pre-commit hooks**: Configure with `git config core.hooksPath .githooks`

## wasm-gc Known Issues

All examples compile for both js and wasm-gc targets except `fetch-async` (requires async/await bridge, intentionally js-only).

**JsPromise `FromJsAny` trait (resolved)**: `JsPromise::then` now requires `T : FromJsAny` and uses `FromJsAny::from_js_any` instead of `%identity` cast. This correctly handles non-externref types on wasm-gc: Bool (i32), Double (f64), enums (GC types), and Unit. Primitive conversions use FFI helpers (`toBool`, `toInt`, `toDouble`, etc.) in the `webapi_JsPromise` JS module. `Promise<undefined>` is still mapped to `JsPromise[JsValue]` as a conservative choice — switching to `JsPromise[Unit]` is a future API-surface change (see `type_mapping.mbt` lines 282-285).

**Trait-typed default values**: Optional parameters with trait-typed defaults (`&TFoo = value`) are stripped to plain optionals. On wasm-gc, trait references compile to GC struct closures, and the compiler's default value thunk returns externref (incompatible with GC struct types). The code generator strips these defaults and uses `Option + match` with `JsValue::undefined()` for absent values instead.

**`unsigned long long` (UInt64) properties on wasm-gc**: Properties typed as `unsigned long long` (e.g., `IDBDatabase.version`) return a regular JS number, but wasm-gc expects BigInt for i64. The generated JS runtime getter returns `obj.version` (a number), which fails with "Cannot convert N to a BigInt". Workaround: avoid calling UInt64 properties on wasm-gc, or use a helper that converts via `BigInt()`. A proper fix would need the generator to emit `BigInt()` wrappers in the JS runtime for i64 return types.
