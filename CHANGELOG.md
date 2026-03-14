# Changelog

## [Unreleased]

## [v0.4.2] - 2026-03-14

### Changed

- Restructured repository to use a single root `moon.mod.json` with `"source": "src"`.
- Renamed `webapi/` to `src/`, `webapi_gen/` to `src/gen/`, `webapi_trim/` to `src/trim/`.
- Moved `examples/` to `src/examples/` with a root-level symlink for navigation.
- Flattened `src/gen/cmd/main/` into `src/gen/`.
- Unified all MoonBit packages under one module; `src/gen/` excluded from publishing.
- Simplified Makefile and CI for single-module layout.
- Sped up trim by building once and running via `node` instead of `moon run` per file.

### Fixed

- Added `wasm-tools` install step to CI for wasm-gc binary validation.
- Fixed Playwright tests 404 by using `src/examples/` path instead of symlink.

### Removed

- Removed `.githooks/` and `.claude/` from version control.

## [v0.4.1] - 2026-03-13

### Fixed

- Updated the generated global browser accessors to use `document()`, `window()`, and `navigator()` consistently across the package and docs.
- Fixed the example gallery and example builds after the global accessor API change so `make build-examples` passes again.

### Changed

- Simplified `webapi_gen/base.mbt` by merging backend-specific `*_js.mbt` and `*_wasm.mbt` template files into unified `#cfg(...)`-gated base templates.

## [v0.4.0] - 2026-03-12

### Highlights

- Added first-class `wasm-gc` support alongside the existing JS target.
- Expanded the live demo gallery to 45 examples covering DOM, Fetch, Canvas, Streams, IndexedDB, Web Animations, WebSocket, URLPattern, File System Access, custom elements, and more.
- Broadened generated API coverage with variadic arguments, namespaces, special operations, more specs, richer dictionary support, and improved callback ergonomics.
- Added `webapi_trim`, a CLI/tooling path for trimming `webapi.mjs` to only the modules required by a compiled wasm binary.

### Breaking Changes

- Promise-returning APIs now use `JsPromise[T]` instead of `@js_async.Promise[T]`.
- For JS-only async/await integration, use the `bikallem/webapi/js_promise` bridge package to convert `JsPromise[T]` values.

### Added

- Added `JsPromise[T]` support for both JS and `wasm-gc`, including `then()`, `catch_()`, and `finally_()` helpers plus the `webapi/js_promise` bridge package.
- Added `webapi_trim` for producing minimal `webapi.mjs` bundles from wasm imports, including function-level trimming and test coverage.
- Added new bindings and examples across a wide range of APIs, including Console, timers, storage, clipboard, notifications, WebSocket, fullscreen, screen orientation, requestIdleCallback, pointer/touch/selection/resize/intersection observers, streams, IndexedDB, Web Animations, permissions, service workers, URLPattern, File System Access, Trusted Types, and more.
- Added custom element helpers and examples such as `wc-counter`, `wc-edit-word`, and the larger `wc-todo` / `wc-calculator` examples.
- Added generator support for WebIDL namespaces, variadic arguments, special operations (getter/setter/deleter), dictionary getters, dynamic `JsObject` helpers, and additional overload handling.

### Changed

- The generated bindings now target both backends throughout the pipeline, and backend-specific FFI is emitted through unified source files guarded with `#cfg(...)`.
- The project layout was consolidated around the `webapi/` module, with package metadata, examples, and tests updated to match.
- The examples gallery, GitHub Pages deployment, and local development flow were expanded to support both JS and `wasm-gc` demos.
- Generated runtime and emitters were refactored substantially to reduce duplication, improve determinism, and make backend behavior easier to reason about.

### Fixed

- Fixed multiple `wasm-gc` conversion issues, including callback wrapping, nullable returns, string handling, enum conversion, primitive array decoding, and `UInt64`/`Int64` BigInt bridging.
- Fixed generated JS runtime issues around reserved words, hyphenated CSS property names, overloaded method name collisions, and namespace module key casing.
- Fixed bugs in example behavior and encapsulation, including per-instance component state and broader JS/wasm parity across demos.
- Fixed `webapi_trim` robustness issues, including UTF-8 import decoding, structured parse failures, resilient filtering, and proper non-zero CLI exits on fatal errors.
- Fixed several generator correctness issues around dictionary inheritance gaps, stale output reconciliation, lexer position tracking, and nullable method/attribute conversion.

### Quality and Tooling

- Grew end-to-end browser coverage to 339 Playwright tests across the example gallery.
- Added broader CI coverage for JS and `wasm-gc` checks, example builds, Pages deployment, and `webapi_trim`.
- Reworked large parts of the generator and parser internals to use smaller helpers, more deterministic output, and more MoonBit-idiomatic patterns.

## [v0.3.0] - 2026-02-08

### Fixed

- Fixed multi-level dictionary inheritance so derived dictionary types correctly include all ancestor members.

### Improved

- Replaced the yacc-generated WebIDL parser with a hand-written recursive descent parser.
- Extracted `type_mapping` and flattened-IDL stages into clearer pipeline components.
- Split large emitter code paths into smaller helpers and moved tests to inline assertions.
- Switched package configuration to `moon.pkg` and cleaned up generator warnings.
