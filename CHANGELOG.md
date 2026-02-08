# Changelog

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
