# WebIDL JSON Parser - Implementation Notes

## Current Status
The JSON parser implementation is partially complete but blocked by MoonBit's JSON library limitations.

## Challenge
MoonBit's standard library has a `@json` builtin, but:
- The `@json.JsonValue` type is not directly exposed for pattern matching
- The `?` operator for Result unwrapping doesn't work in MoonBit  
- Need to use explicit match statements everywhere

## Alternative Approaches

### Option 1: Use MoonBit's builtin JSON derive
```moonbit
// Add derive(FromJson) to all AST types
pub struct InterfaceDefinition {
  ...
} derive(Show, FromJson)
```

This would automatically generate JSON parsers, but:
- Field names must match JSON exactly (type vs type_)
- May not handle the complex nested structures well

### Option 2: Read JSON as string, parse manually
Since we control the Node.js preprocessing, we could:
1. Transform the webidl2 JSON into a simpler format
2. Or generate MoonBit code directly from JSON (skip the JSON parsing step)

### Option 3: **Generate MoonBit directly from webidl2** (RECOMMENDED)
Instead of:
```
WebIDL → JSON → MoonBit AST → MoonBit code
```

Do:
```
WebIDL → JSON → MoonBit code (directly)
```

Create a Node.js/TypeScript codegen that:
1. Parses WebIDL using webidl2 ✅ (done)
2. Reads the JSON AST
3. Applies merging/overrides logic
4. Generates MoonBit bindings directly

This is simpler and follows the TypeScript-DOM-lib-generator approach more closely.

## Recommendation
**Skip the MoonBit JSON parsing** and instead extend `scripts/parse_idl.mjs` to also generate the MoonBit code directly. This is more pragmatic and leverages JavaScript's excellent JSON support.

The MoonBit AST types we created are still useful as documentation of the structure, but we don't need to actually parse JSON in MoonBit.
