# GitHub Copilot Instructions for bikallem/webapi

## Project Overview

This repository generates **type-safe MoonBit bindings** for Web Platform APIs (DOM, HTML, Canvas, Events) from WebIDL specifications. It's a code generator written in TypeScript that produces MoonBit FFI bindings.

## Tech Stack

- **Language**: MoonBit (generated bindings) + TypeScript (code generator)
- **Build Tools**: MoonBit toolchain (`moon`), TypeScript compiler (`tsc`), Node.js
- **Target**: JavaScript/WebAssembly (via MoonBit's JS backend)
- **Package Manager**: npm (for TypeScript dependencies)

## Essential Commands

### Building and Testing
```bash
# Type-check MoonBit code (fast, run frequently)
NEW_MOON=1 moon check --target js

# Build the TypeScript code generator
npm run build

# Generate MoonBit bindings from WebIDL
make gen

# Format MoonBit code
NEW_MOON=1 moon fmt

# Update MoonBit package interfaces
NEW_MOON=1 moon info --target js

# Build everything (clean, format, build, update info)
make all

# Build and test examples
make examples
```

### Development Workflow
1. Run `moon check` regularly to validate MoonBit syntax
2. Use `moon fmt` to auto-format MoonBit code
3. Run `moon info` after API changes to update `.mbti` files
4. Use `make gen` when modifying the code generator

## Project Structure

```
.
├── .github/                    # CI/CD and Copilot configuration
├── AGENTS.md                   # MoonBit language guide (reference document)
├── webapi/                     # Generated MoonBit bindings (AUTO-GENERATED)
│   ├── *.mbt                   # Interface/type/enum definitions
│   ├── moon.mod.json           # Module metadata
│   └── pkg.generated.mbti      # Auto-generated package interface
├── webapi-gen/                 # TypeScript code generator source
│   ├── build.ts                # Main orchestrator
│   ├── widlprocess.ts          # WebIDL parser
│   ├── mapping.ts              # Type mapping (WebIDL → MoonBit)
│   └── emitter/                # Code emission logic
├── examples/                   # Usage examples
├── webapi/moon.mod.json        # MoonBit module metadata (inside webapi/)
├── package.json                # npm dependencies
├── Makefile                    # Build automation
└── README.mbt.md               # Main documentation
```

## MoonBit Code Style

### Naming Conventions
- **Types/Enums**: `UpperCamelCase` (e.g., `CanvasLineCap`, `ShadowRootMode`)
- **Functions/Values**: `lower_snake_case` (e.g., `create_element`, `add_event_listener`)
- **Struct Fields**: `lower_snake_case`
- **Enum Variants**: `UpperCamelCase` (e.g., `Round`, `Square`)

### Code Organization
- Use `///|` to delimit top-level code blocks
- Each `.mbt` file focuses on one type/interface
- FFI declarations use the pattern: `fn name_ffi(...) = "module" "method"`
- Derive traits when possible: `derive(Show, Eq, ToJson)`

### Type System
- Use `pub` for readonly public types (can read/pattern match, not construct)
- Use `pub(all)` for fully public types (can construct externally)
- Use `pub(open)` for traits that can be implemented externally
- Functions are private by default; use `pub` to expose

### Example FFI Pattern
```mbt
///|
pub fn Element::get_attribute(self : Element, name : String) -> String? {
  let result = element_get_attribute_ffi(self.0, name)
  if result.is_null() {
    None
  } else {
    Some(result.to_string())
  }
}

///|
fn element_get_attribute_ffi(obj : JsValue, name : String) -> JsValue = 
  "webapi_Element" "getAttribute"
```

## Type Mappings (WebIDL → MoonBit)

| WebIDL Type | MoonBit Type |
|-------------|--------------|
| `DOMString`, `USVString` | `String` |
| `boolean` | `Bool` |
| `long`, `short` | `Int` |
| `unsigned long` | `UInt` |
| `long long` | `Int64` |
| `double`, `float` | `Double`, `Float` |
| `any`, `object` | `JsValue` |
| `sequence<T>` | `Array[T]` |
| `Promise<T>` | `JsPromise[T]` |
| Nullable types | `Option[T]` (e.g., `T?`) |
| Union types | External type + trait |
| Enum types | MoonBit `enum` with `from(String)` method |

## Code Generation Patterns

### Enums
Generated enums include:
- Type definition with variants
- `from(String)` method for runtime conversion
- `to_js()` method for FFI serialization

### Interfaces
Generated interfaces include:
- Trait definition (e.g., `TElement`)
- External type wrapper (e.g., `Element(JsValue)`)
- FFI methods with `_ffi` suffix
- Public wrapper methods with proper type conversions

### Typedef Unions
Generated as:
- External type (e.g., `CanvasImageSource`)
- Trait for conversion (e.g., `TCanvasImageSource`)
- Implementations for each member type

## Testing

- **Snapshot Testing**: Use `inspect(value, content="...")` for expected outputs
- **Update Tests**: Run `moon test --update` to regenerate snapshots
- **Black-box Tests**: Prefer `_test.mbt` files that use public APIs
- **White-box Tests**: Use `_wbtest.mbt` only when testing internal implementation

## Boundaries - What NOT to Modify

### Never Change These Files
- `AGENTS.md` - Language reference (read-only)
- `webapi/*.mbt` - Auto-generated from WebIDL (regenerate via `make gen`)
- `webapi/webapi.mjs`, `webapi/webapi.min.mjs` - Build artifacts
- `node_modules/` - npm dependencies
- `target/` - MoonBit build artifacts
- `.moon/` - MoonBit toolchain cache

### Safe to Modify
- `webapi-gen/**/*.ts` - Code generator source
- `examples/**/*.mbt` - Example code
- `README.mbt.md` / `README.md` - Documentation (README.md is a symlink)
- `moon.mod.json` - Module configuration
- `moon.pkg.json` - Package configuration (in package directories)
- Build scripts (`Makefile`, `package.json`)

## Common Tasks

### Adding a New WebIDL Type
1. Update `webapi-gen/` TypeScript code to handle the new type
2. Run `make gen` to regenerate bindings
3. Run `moon check` to validate generated code
4. Run `moon fmt` to format
5. Run `moon info` to update `.mbti` interface

### Fixing Type Mapping Issues
1. Locate the mapping logic in `webapi-gen/mapping.ts`
2. Update the type conversion function
3. Regenerate bindings with `make gen`
4. Validate with `moon check`

### Adding Examples
1. Create new `.mbt` file in `examples/` directory
2. Add to `examples/moon.pkg.json` if needed
3. Run `make examples` to build and validate
4. Update README with usage examples

## FFI Conventions

- All FFI functions end with `_ffi` suffix
- FFI declarations use string literal syntax: `= "module" "method"`
- FFI wrapper functions handle `JsValue` ↔ MoonBit type conversions
- Nullable FFI results check `.is_null()` before converting

## Error Handling

- Use `Option[T]` for nullable return values
- Use `Result[T, E]` for operations that may fail
- Use `raise` annotations for functions that may throw
- Avoid panics; prefer returning `None` or error values

## Git Workflow

- Keep commits focused and atomic
- Generated code changes should be in separate commits
- Format all code before committing
- Update `.mbti` files when public APIs change

## Documentation

- Document public APIs with `///` doc comments
- Include usage examples in doc strings
- Code examples in docs are type-checked (MoonBit feature)
- Keep README.mbt.md up-to-date with API changes

## Additional Resources

- [MoonBit Documentation](https://www.moonbitlang.com/docs/)
- [WebIDL Specification](https://webidl.spec.whatwg.org/)
- [Web Platform APIs](https://developer.mozilla.org/en-US/docs/Web/API)
- See `AGENTS.md` for comprehensive MoonBit language guide
