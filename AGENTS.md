# Repository Guidelines

## Project Structure & Module Organization
- `webapi_gen/`: MoonBit code generator that parses WebIDL and emits bindings.
- `src/`: generated WebAPI bindings and shared runtime files (`*_js.mbt`, `*_wasm.mbt`, typedefs, enums, dictionaries, interfaces).
- `examples/`: runnable example apps (JS and wasm-gc targets, except `fetch-async` which is js-only).
- `tests/`: Playwright end-to-end tests for examples.
- `docs/`: design notes and plans.

Treat `src/` as generated output. For API shape or codegen behavior changes, edit `webapi_gen/` first, then regenerate.

## Build, Test, and Development Commands
- `make gen`: run generator (`webapi_gen/cmd/main`) and rewrite `src/`.
- `make gen-test`: run generator package tests.
- `make check`: type-check bindings (`moon check --target js` and `moon check --target wasm-gc`).
- `make build-examples`: build `examples/` for JS and wasm-gc release.
- `make test-playwright`: run browser tests in `tests/`.
- `make fmt`: format MoonBit code.
- `make info`: refresh `.mbti` interface snapshots (`moon info --target js`).
- `make all`: full pipeline (`gen`, `check`, `fmt`, `info`, examples, Playwright).

Always run `moon fmt` and `moon info --target js` before finalizing or committing. Always validate both targets (`moon check --target js && moon check --target wasm-gc`).

## Coding Style & Naming Conventions
- Language: MoonBit (`.mbt`), formatted with `moon fmt`.
- Naming: functions/variables in `snake_case`; generated overloads use suffixes like `_2`.
- Keep manual edits out of generated files unless the change is intentionally regenerated in the same commit.
- Prefer small, focused edits in `webapi_gen/emit`, `type_mapping`, and `type_registry` for behavior changes.

## Testing Guidelines
- Unit/white-box tests live in `webapi_gen/**/*_wbtest.mbt` and package tests.
- End-to-end coverage uses Playwright specs in `tests/*.spec.ts`.
- When changing codegen:
  1. `make gen-test` (or `cd webapi_gen && moon test --update` to update snapshots)
  2. `cd webapi_gen && moon clean && moon run cmd/main` (clean first to avoid stale cache)
  3. `make check` (both JS and wasm-gc targets)
  4. `cd examples && moon build --target wasm-gc --release` (build wasm examples)
  5. `wasm-tools validate path/to/example.wasm` (validate affected wasm binaries)
  6. `make test-playwright` (for behavioral/user-facing changes)
  7. `make fmt && make info`

Regression tests to keep:
- overload dispatch and docs: `webapi_gen/emit/interface_emitter_wbtest.mbt`
- argument rendering edge cases: `webapi_gen/emit/interface_method_emit_wbtest.mbt`
- async fetch example behavior: `tests/fetch-async.spec.ts`

## Recent Engineering Learnings
- Overload safety: keep emitted MoonBit name separate from WebIDL member name. Use generated disambiguated names (e.g. `fill_2`) only for MoonBit symbols/import names, but use the original WebIDL name for JS property access and MDN links. This prevents invalid JS like `obj.scroll_2(...)`.
- Named type resolution should go through `TypeRegistry::named_type_kind` (not ad-hoc chained checks). This keeps interface/dictionary/enum handling explicit and typedef/callback behavior consistent.
- Union typedef args/attrs must be detected via `TypeRegistry` (see `is_union_typedef`) so emitters do not depend on flattened IDL internals.
- Generated output should stay deterministic (sorted file/emission order) to keep diffs stable and reviewable.
- For generator behavior changes, commit generator logic, tests, and regenerated `src/` together so CI and downstream users get a coherent state.
- JS runtime namespace module keys must use PascalCase (`webapi_Console`, not `webapi_console`) to match wasm import module names. The namespace emitter PascalCases WebIDL names for MoonBit types; the JS runtime must do the same for its module keys. The method bodies keep the original WebIDL name for JS API calls (e.g., `console.log()`).
- wasm-gc callback externref: the MoonBit compiler currently handles `externref` vs `(ref extern)` correctly for callback funcref parameters. The `JsAny` workaround in `JsPromise` callbacks was needed for a specific compiler version; don't assume all `#external` types in callback params need the same treatment without verifying the failure first.
- wasm-gc JsPromise limitation: `JsPromise::then` uses `js_any_cast` (`%identity`) to convert the resolved value from `JsAny` (ref extern) to `T`. This works for externref-compatible types (interfaces, JsValue, String) but fails for wasm value types (Unit=i32, Double=f64, Bool=i32) and GC types (enums, Arrays). `Promise<undefined>` is mapped to `JsPromise[JsValue]` as a workaround for Unit. A general fix (e.g., a `FromJsAny` trait with per-type conversion impls) is needed for `JsPromise[EnumType]`, `JsPromise[Array[T]]`, and `JsPromise[Double]`.
- wasm-gc type system: MoonBit wasm-gc uses distinct reference types that are NOT interchangeable: `externref` (nullable, for `#external` types like JsValue/interfaces/dictionaries), `(ref extern)` (non-nullable external ref), GC types (structs with funcref, for trait closures `&TFoo`, MoonBit enums, `Array[T]`), and wasm value types (i32/f64/i64, for Bool/Int/Double/Unit). `%identity` and `unsafe_cast` cannot convert between these categories.
- wasm-gc trait-typed defaults: Optional params with trait-typed defaults (`&TFoo = value`) create compiler thunks that return `Option[GCStruct]`. The compiler uses `JsNull::null()` (externref) for `None`, which is incompatible with GC struct types. This affects ALL defaults for Union and Interface typed params — even `JsValue::null()` is unsafe because the trait closure wrapper is a GC struct. The code generator strips these defaults in `method_args()` (`interface_emitter.mbt`).
- wasm-gc enum returns: MoonBit enums are GC types, not externref. When methods return enum types, JS returns a string (externref). The emitter wraps enum returns in a `jsvalue_to_string` + `Enum::from()` converter via an intermediate `_wasm` function (see `emit_wasm_ffi_with_return` in `interface_method_helpers.mbt`).
- wasm-gc typedef primitives: Type aliases to wasm value types (e.g., `DOMHighResTimeStamp` = Double, `EpochTimeStamp` = UInt64) can be returned directly from wasm imports — add them to `wasm_valid_stub_other_types` in `wasm_type_info.mbt`.
- wasm-gc static attrs/methods: JS runtime wrappers for static attributes must use `() => ClassName.attr` (no `obj` parameter), not `(obj) => obj.attr`. Static methods must use `ClassName.method()`, not bare `method()`. See `emit_js_getter`, `emit_js_setter`, `emit_js_method` in `emit_js_runtime.mbt`.
- wasm-gc debugging: Use `wasm-tools validate` to find failing functions, then `wasm-tools print` to dump the wasm text. Trace the failing function number by searching for `(func (;N;)` in the text output. The type definitions at the top of the file show the GC struct layouts. `ref.func N` shows where default value thunks are referenced.
- Generator caching: After editing `webapi_gen/`, always `moon clean` before `moon run cmd/main`. The build system may cache the binary and produce unchanged output despite source changes.

## Commit & Pull Request Guidelines
- Follow existing commit style: `feat:`, `fix:`, `refactor:`, `test:`, `chore:` (imperative, concise).
- Keep commits scoped (generator logic, tests, regenerated output).
- PRs should include:
  - what changed and why,
  - key files touched,
  - commands run for validation,
  - regenerated `src/` diff when generator behavior changes.
