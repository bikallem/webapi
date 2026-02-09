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

# Install npm dependencies (WebIDL specs)
npm install
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
| `Promise<T>` | `@js_async.Promise[T]` |
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
2. Run `cd webapi_gen && moon run cmd/main` to regenerate bindings
3. Run `moon check --target js` to validate generated code
4. Run `moon fmt` to format
5. Run `moon info --target js` to update `.mbti` interface files

## Release Checklist

- Update `README.mbt.md` (install version, code examples, any new APIs)
- Update `CHANGELOG.md`
- Bump version in `moon.mod.json`

## Important Notes

- **Target**: This library targets the JS backend only (`--target js`)
- **Generated files**: Never edit files in `src/` directly; modify the generator instead
- **MoonBit reference**: See `AGENTS.md` for comprehensive MoonBit language guide
- **Pre-commit hooks**: Configure with `git config core.hooksPath .githooks`
