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
- `TJsValue` - Trait all JS-interop types must implement
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

`console`, `cssom`, `cssom-view`, `dom`, `fetch`, `html`, `hr-time`, `geometry`, `FileAPI`, `performance-timeline`, `referrer-policy`, `SVG`, `trusted-types`, `uievents`, `url`, `webidl`, `xhr`

### Candidates for inclusion

#### High value (commonly used in web apps)

| Spec | Key APIs | Notes |
|------|----------|-------|
| `encoding` | TextEncoder, TextDecoder | Essential for binary/string conversion |
| `streams` | ReadableStream, WritableStream, TransformStream | Used by fetch body, file APIs |
| `intersection-observer` | IntersectionObserver | Lazy loading, infinite scroll |
| `resize-observer` | ResizeObserver | Responsive layout changes |
| `selection-api` | Selection, Range | Text selection and editing |
| `clipboard-apis` | Clipboard | Copy/paste |
| `fullscreen` | Fullscreen API | |
| `pointerevents` | PointerEvent | Unified mouse/touch/pen input |
| `touch-events` | TouchEvent | Mobile touch handling |
| `web-animations` | Animation, KeyframeEffect | Programmatic animations |
| `storage` | StorageManager | Storage quota and persistence |
| `screen-orientation` | ScreenOrientation | Orientation lock/detection |
| `notifications` | Notification | Push notifications UI |
| `IndexedDB` | IDBDatabase, IDBObjectStore | Client-side structured storage |
| `websockets` | WebSocket | Real-time communication |
| `requestidlecallback` | requestIdleCallback | Background task scheduling |

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

**JsPromise limitation**: `JsPromise::then` uses `js_any_cast` (`%identity`) to convert resolved values from `JsAny` (ref extern) to `T`. This only works for externref-compatible T (interfaces, JsValue, String). It fails for wasm value types (Unit=i32, Double=f64) and GC types (enums, Arrays). `Promise<undefined>` is mapped to `JsPromise[JsValue]` as a workaround. A general fix needs a `FromJsAny` trait with per-type conversion impls for `JsPromise[EnumType]`, `JsPromise[Array[T]]`, `JsPromise[Double]`, etc.

**Trait-typed default values**: Optional parameters with trait-typed defaults (`&TFoo = value`) are stripped to plain optionals. On wasm-gc, trait references compile to GC struct closures, and the compiler's default value thunk returns externref (incompatible with GC struct types). The code generator strips these defaults and uses `Option + match` with `JsValue::undefined()` for absent values instead.
