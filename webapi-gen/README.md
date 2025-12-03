# webapi-gen - MoonBit DOM Bindings Generator

This directory contains the TypeScript code generator that produces MoonBit bindings from WebIDL specifications.

## Generation Process

### 1. Fetch WebIDL (`build.ts`)
The generator fetches official WebIDL definitions from `@webref/idl`, which provides machine-readable specs for web APIs. Only core DOM specs are included:
- `dom` - Core DOM interfaces
- `html` - HTML elements
- `uievents` - UI events
- `cssom` - CSS Object Model
- `cssom-view` - CSSOM View (scrolling, etc.)

### 2. Parse WebIDL (`widlprocess.ts`)
Uses `webidl2` to parse the IDL text into an AST, then transforms it into our internal representation:
- **Interfaces** - Types with methods and properties
- **Dictionaries** - Structured data types (like TypeScript interfaces)
- **Callbacks** - Function type definitions
- **Typedefs** - Type aliases
- **Mixins** - Shared functionality applied to multiple interfaces

### 3. Apply Mixins (`widlprocess.ts`)
WebIDL uses "includes" statements to mix in shared functionality. For example:
```webidl
Document includes DocumentOrShadowRoot;
```
The generator resolves these by copying mixin members into target interfaces.

### 4. Generate MoonBit Code (`emitter/`)
Each emitter module generates a specific part of the output:

| Module | Purpose |
|--------|---------|
| `interface.ts` | Interface types, traits, and trait impls |
| `method.ts` | Instance and static methods |
| `property.ts` | Getters and setters |
| `constructor.ts` | Type constructors |
| `dictionary.ts` | Dictionary structs with builder pattern |
| `callback.ts` | Callback function types |
| `typedef.ts` | Type aliases (EventHandler, etc.) |
| `union.ts` | Union type traits for polymorphic parameters |
| `globals.ts` | Global functions (document, window, etc.) |
| `js-runtime.ts` | JavaScript runtime support (webapi.mjs) |

### 5. Type Mapping (`mapping.ts`)
Maps WebIDL types to MoonBit types:

| WebIDL | MoonBit |
|--------|---------|
| `DOMString`, `USVString` | `String` |
| `boolean` | `Bool` |
| `long`, `short` | `Int` |
| `double`, `float` | `Double` |
| `unsigned long long` | `Int64` |
| `any`, `object` | `JsValue` |
| `void`, `undefined` | `Unit` |
| `sequence<T>` | `Array[T]` |
| `T?` (nullable) | Uses `Type::null()` pattern |
| `Promise<T>` | `JsPromise[T]` |

### 6. Output Structure
Generated files go to `webapi/dom/`:
```
webapi/dom/
├── js_value.mbt        # Core FFI types (from base.mbt/)
├── js_array.mbt        # Array support
├── js_promise.mbt      # Promise support
├── primitives.mbt      # Primitive TJsValue impls
├── event_listener.mbt  # EventListener callback interface
├── event_target.mbt    # Generated interface
├── element.mbt         # Generated interface
├── document.mbt        # Generated interface
├── ...                 # More generated files
├── globals.mbt         # Global accessors
└── webapi.mjs          # JavaScript runtime
```

## Key Design Patterns

### Trait-based Inheritance
Each interface generates a trait (e.g., `TElement`) that extends parent traits:
```moonbit
pub trait TElement: TNode + TJsValue {
  get_attribute(self : Self, name : String) -> String? = _
  // ...
}
```

### FFI Wrapper Pattern
All FFI calls use a wrapper function for type safety:
```moonbit
fn element_get_attribute_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Element" "getAttribute"

impl TElement with get_attribute(self : Self, name : String) -> String? {
  element_get_attribute_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).unsafe_cast()
}
```

### Nullable Types
Nullable types use the `null()`/`is_null()` pattern instead of `Option`:
```moonbit
pub fn Element::null() -> Element = "JsValue" "null"
pub fn Element::is_null(self : Element) -> Bool = "JsValue" "isNull"
```

### Union Types
WebIDL unions generate open traits for polymorphism:
```moonbit
pub(open) trait TAddEventListenerOptionsArg {
  to_js(self : Self) -> JsValue
}
pub impl TAddEventListenerOptionsArg for AddEventListenerOptions with to_js(...) = "%identity"
pub impl TAddEventListenerOptionsArg for Bool with to_js(...) = "%identity"
```

## Running the Generator

```bash
# Build TypeScript
npm run build

# Generate MoonBit bindings
node dist/build.js

# Or do both
npm run generate
```

## Adding New APIs

1. Add the spec name to `CORE_SPECS` in `build.ts`
2. Add interface names to `CORE_INTERFACES` in `build.ts`
3. Run `npm run generate`
4. Check output with `moon check --target js`
