# Code Duplication - Detailed Examples

## 1. CRITICAL: External Type + TJsValue Pattern

### Current Implementation (5 files, ~75 lines total)

#### interface.ts (lines 74-85)
```typescript
/**
 * Emit the external type declaration
 */
function emitExternalType(iface: ParsedInterface): string {
  return `///|
#external
pub type ${iface.name}`;
}

/**
 * Emit TJsValue implementation for the type
 */
function emitTJsValueImpl(iface: ParsedInterface): string {
  return `///|
pub impl TJsValue for ${iface.name} with to_js(self : ${iface.name}) -> JsValue = "%identity"`;
}
```

#### callback.ts (lines 48-57)
```typescript
/**
 * Emit external type declaration for callback
 */
function emitCallbackType(callback: ParsedCallback): string {
  return `///|
#external
pub type ${callback.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(callback: ParsedCallback): string {
  return `///|
pub impl TJsValue for ${callback.name} with to_js(self : ${callback.name}) -> JsValue = "%identity"`;
}
```

#### dictionary.ts (lines 16-25)
```typescript
/**
 * Emit external type declaration for dictionary
 */
function emitDictionaryType(dict: ParsedDictionary): string {
  return `///|
#external
pub type ${dict.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(dict: ParsedDictionary): string {
  return `///|
pub impl TJsValue for ${dict.name} with to_js(self : ${dict.name}) -> JsValue = "%identity"`;
}
```

#### typedef.ts (lines 18-28)
```typescript
/**
 * Emit external type declaration for typedef
 */
function emitTypedefType(typedef: ParsedTypedef): string {
    return `///|
#external
pub type ${typedef.name}`;
}

/**
 * Emit TJsValue implementation
 */
function emitTJsValueImpl(typedef: ParsedTypedef): string {
    return `///|
pub impl TJsValue for ${typedef.name} with to_js(self : ${typedef.name}) -> JsValue = "%identity"`;
}
```

#### union.ts (lines 235-236, implicit elsewhere)
```typescript
lines.push("#external");
lines.push(`pub type ${typeName}`);
// ... later ...
// TJsValue impl is similar
```

### Proposed Solution

**File: `emitter/common.ts`**
```typescript
/**
 * Common emission patterns shared across all emitters
 */

/**
 * Emit external type declaration
 * @param typeName The name of the type to declare
 */
export function emitExternalType(typeName: string): string {
  return `///|
#external
pub type ${typeName}`;
}

/**
 * Emit TJsValue implementation for a type
 * @param typeName The name of the type
 */
export function emitTJsValueImpl(typeName: string): string {
  return `///|
pub impl TJsValue for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`;
}
```

### Migration Example

**Before (interface.ts):**
```typescript
function emitExternalType(iface: ParsedInterface): string {
  return `///|
#external
pub type ${iface.name}`;
}

function emitTJsValueImpl(iface: ParsedInterface): string {
  return `///|
pub impl TJsValue for ${iface.name} with to_js(self : ${iface.name}) -> JsValue = "%identity"`;
}

export function emitInterface(iface: ParsedInterface): string {
  const parts: string[] = [];
  parts.push(emitExternalType(iface));
  parts.push(emitTJsValueImpl(iface));
  // ... rest of code
}
```

**After (interface.ts):**
```typescript
import { emitExternalType, emitTJsValueImpl } from "./common.js";

export function emitInterface(iface: ParsedInterface): string {
  const parts: string[] = [];
  parts.push(emitExternalType(iface.name));
  parts.push(emitTJsValueImpl(iface.name));
  // ... rest of code
}
```

---

## 2. HIGH: Union Type Checking & Filtering

### Current Implementation (3 files, ~70 lines total)

#### method.ts (lines 44-87)
```typescript
/**
 * Map a union member type to its MoonBit type name
 */
function getUnionMemberMoonbitType(memberType: ParsedType): string {
  switch (memberType.type) {
    case "primitive":
      if (memberType.name === "boolean") return "Bool";
      if (memberType.name === "DOMString" || memberType.name === "USVString" || memberType.name === "ByteString") return "String";
      if (memberType.name === "long" || memberType.name === "short" || memberType.name === "unsigned long" || memberType.name === "unsigned short") return "Int";
      if (memberType.name === "double" || memberType.name === "float") return "Double";
      return "JsValue";
    case "reference":
      return memberType.name || "JsValue";
    default:
      return "JsValue";
  }
}

/**
 * Get filtered union member types (excluding skipped types)
 * Deduplicates by MoonBit type name to avoid duplicate implementations
 */
function getFilteredUnionMembers(unionType: ParsedType): ParsedType[] {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return [];
  }

  const seen = new Set<string>();
  const result: ParsedType[] = [];

  for (const memberType of unionType.memberTypes) {
    const moonbitType = getUnionMemberMoonbitType(memberType);
    if (!SKIP_UNION_TYPES.has(moonbitType) && !seen.has(moonbitType)) {
      seen.add(moonbitType);
      result.push(memberType);
    }
  }

  return result;
}

/**
 * Check if union collapses to a single type after filtering
 * Returns the single type's MoonBit name if it does, undefined otherwise
 */
function getCollapsedUnionType(unionType: ParsedType): string | undefined {
  const filtered = getFilteredUnionMembers(unionType);
  if (filtered.length === 1) {
    return getUnionMemberMoonbitType(filtered[0]);
  }
  return undefined;
}
```

#### union.ts (lines 29-41, 115-145)
```typescript
/**
 * Get the MoonBit type name for a union member
 */
function getMemberTypeName(memberType: ParsedType): string {
  const mapped = mapIdlType(memberType);
  return mapped.moonbitType;
}

/**
 * Emit a union type trait and its implementations (for arguments)
 */
export function emitUnionType(union: UnionTypeContext): string {
  const parts: string[] = [];

  // Trait definition
  parts.push(`///|
trait ${union.contextName} {
  to_js(Self) -> JsValue
}`);

  // Implementation for each member type
  const seenTypes = new Set<string>();

  for (const memberType of union.memberTypes) {
    const typeName = getMemberTypeName(memberType);

    // Skip duplicates
    if (seenTypes.has(typeName)) continue;
    seenTypes.add(typeName);

    parts.push(`///|
impl ${union.contextName} for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`);
  }

  // Also add JsNull implementation for nullable unions
  if (!seenTypes.has("JsNull")) {
    parts.push(`///|
pub impl ${union.contextName} for JsNull with to_js(self : JsNull) -> JsValue = "%identity"`);
  }

  return parts.join("\n\n");
}
```

#### property.ts (uses mapIdlType instead)
```typescript
// Relies on mapIdlType which returns mapped.moonbitType
const mapped = mapIdlType(prop.type, contextName);
```

### Proposed Solution

**File: `emitter/unionUtils.ts`**
```typescript
import type { ParsedType } from "../types.js";
import { mapIdlType } from "../mapping.js";

/**
 * Types that should be skipped in union trait implementations
 */
const SKIP_UNION_TYPES = new Set([
  "TrustedType",
  "TrustedHTML",
  "TrustedScript",
  "TrustedScriptURL",
]);

/**
 * Get the MoonBit type name for a union member
 */
export function getUnionMemberMoonbitType(memberType: ParsedType): string {
  const mapped = mapIdlType(memberType);
  return mapped.moonbitType;
}

/**
 * Get filtered union member types (excluding skipped types)
 * Deduplicates by MoonBit type name to avoid duplicate implementations
 */
export function getFilteredUnionMembers(unionType: ParsedType): ParsedType[] {
  if (unionType.type !== "union" || !unionType.memberTypes) {
    return [];
  }

  const seen = new Set<string>();
  const result: ParsedType[] = [];

  for (const memberType of unionType.memberTypes) {
    const moonbitType = getUnionMemberMoonbitType(memberType);
    if (!SKIP_UNION_TYPES.has(moonbitType) && !seen.has(moonbitType)) {
      seen.add(moonbitType);
      result.push(memberType);
    }
  }

  return result;
}

/**
 * Check if union collapses to a single type after filtering
 * Returns the single type's MoonBit name if it does, undefined otherwise
 */
export function getCollapsedUnionType(unionType: ParsedType): string | undefined {
  const filtered = getFilteredUnionMembers(unionType);
  if (filtered.length === 1) {
    return getUnionMemberMoonbitType(filtered[0]);
  }
  return undefined;
}

/**
 * Check if a type is a union
 */
export function isUnionType(type: ParsedType): boolean {
  return type.type === "union" && !!type.memberTypes;
}
```

### Migration in method.ts
```typescript
import { 
  getUnionMemberMoonbitType, 
  getFilteredUnionMembers, 
  getCollapsedUnionType,
  isUnionType
} from "./unionUtils.js";

// Remove local definitions of:
// - getUnionMemberMoonbitType()
// - getFilteredUnionMembers()
// - getCollapsedUnionType()

// Replace usage:
- const moonbitType = getUnionMemberMoonbitType(memberType);
+ // Now imported from unionUtils.ts
```

---

## 3. HIGH: Nullable Unwrapping Pattern

### Current Implementation (Multiple files, ~18+ lines)

#### method.ts (appears 3+ times)
```typescript
// Location 1 (line ~157-170):
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}
if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
  // Union handling
}

// Location 2 (line ~285-290):
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}
const isUnionArg = typeToCheck.type === "union" && typeToCheck.memberTypes;

// Location 3 (line ~335-340):
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}
// Check if union...
```

#### property.ts
```typescript
// Similar pattern:
let typeToCheck = prop.type;
// Check union...
```

### Proposed Solution

**File: `emitter/typeUtils.ts`**
```typescript
import type { ParsedType } from "../types.js";

/**
 * Unwrap nullable type to get the inner type
 * @param type The type to unwrap
 * @returns The unwrapped type (or same type if not nullable)
 */
export function unwrapNullableType(type: ParsedType): ParsedType {
  if (type.type === "nullable" && type.elementType) {
    return type.elementType;
  }
  return type;
}

/**
 * Check if a type is a union (after unwrapping nullable)
 * @param type The type to check
 * @returns true if the type is a union
 */
export function isUnionType(type: ParsedType): boolean {
  const unwrapped = unwrapNullableType(type);
  return unwrapped.type === "union" && !!unwrapped.memberTypes;
}

/**
 * Get the inner union type if this is a union (possibly nullable)
 * @param type The type to check
 * @returns The union type, or undefined if not a union
 */
export function getUnionType(type: ParsedType): ParsedType | undefined {
  const unwrapped = unwrapNullableType(type);
  if (unwrapped.type === "union") {
    return unwrapped;
  }
  return undefined;
}
```

### Migration Example

**Before (method.ts, location 1):**
```typescript
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}

let paramType: string;
if (mapped.isTypedefUnion) {
  paramType = mapped.moonbitType;
} else if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
  const collapsedType = getCollapsedUnionType(typeToCheck);
  if (collapsedType) {
    paramType = collapsedType;
  } else {
    const traitName = getUnionArgTraitName(method.name, param.name);
    paramType = `&${traitName}`;
  }
} else {
  paramType = mapped.moonbitType;
}
```

**After (method.ts):**
```typescript
import { unwrapNullableType, getUnionType } from "./typeUtils.js";

const typeToCheck = unwrapNullableType(param.type);

let paramType: string;
if (mapped.isTypedefUnion) {
  paramType = mapped.moonbitType;
} else if (getUnionType(param.type)) {
  const collapsedType = getCollapsedUnionType(typeToCheck);
  if (collapsedType) {
    paramType = collapsedType;
  } else {
    const traitName = getUnionArgTraitName(method.name, param.name);
    paramType = `&${traitName}`;
  }
} else {
  paramType = mapped.moonbitType;
}
```

---

## 4. HIGH: FFI Safety Type Checking

### Current Implementation (3 files, ~24 lines)

#### property.ts (lines 108-113)
```typescript
/**
 * Check if a type is valid for FFI stubs
 */
function isFfiSafeType(moonbitType: string): boolean {
  // Arrays, optionals and generics are not FFI-safe
  if (moonbitType.includes("[") || moonbitType.includes("?")) return false;
  // Only primitives and JsValue are safe
  const safePrimitives = ["Bool", "Int", "Int64", "Double", "String", "Unit", "JsValue"];
  return safePrimitives.includes(moonbitType);
}
```

#### constructor.ts (lines 72-76, inline)
```typescript
const allFfiSafe = constructor.params.every(p => {
  const mapped = mapIdlType(p.type);
  return !mapped.moonbitType.includes("[") && !mapped.moonbitType.startsWith("&");
});
```

### Proposed Solution

**File: `emitter/ffiUtils.ts`**
```typescript
/**
 * Check if a type is valid for FFI stubs
 * FFI safe types: Bool, Int, Int64, Double, String, Unit, JsValue
 * FFI unsafe types: Arrays, optionals, trait references, generics
 */
export function isFfiSafeType(moonbitType: string): boolean {
  // Arrays, optionals, generics, and trait references are not FFI-safe
  if (moonbitType.includes("[") || moonbitType.includes("?") || moonbitType.startsWith("&")) {
    return false;
  }

  // Only primitives and JsValue are safe
  const safePrimitives = ["Bool", "Int", "Int64", "UInt", "Int16", "UInt16", "Double", "Float", "String", "Unit", "JsValue", "Byte"];
  return safePrimitives.includes(moonbitType);
}
```

### Migration

**Before (constructor.ts):**
```typescript
const allFfiSafe = constructor.params.every(p => {
  const mapped = mapIdlType(p.type);
  return !mapped.moonbitType.includes("[") && !mapped.moonbitType.startsWith("&");
});
```

**After (constructor.ts):**
```typescript
import { isFfiSafeType } from "./ffiUtils.js";

const allFfiSafe = constructor.params.every(p => {
  const mapped = mapIdlType(p.type);
  return isFfiSafeType(mapped.moonbitType);
});
```

---

## Summary of Files to Create

| File | Responsibility | Size |
|------|-----------------|------|
| `emitter/common.ts` | Shared external type/trait patterns | ~20 lines |
| `emitter/unionUtils.ts` | Union type utilities | ~80 lines |
| `emitter/typeUtils.ts` | Type unwrapping and checking | ~40 lines |
| `emitter/ffiUtils.ts` | FFI safety checking | ~15 lines |
| `emitter/conversionUtils.ts` | Type conversion builders | ~100 lines |
| `emitter/parameterBuilder.ts` | Parameter list building | ~80 lines |

**Total new code: ~335 lines**
**Removed duplication: ~390 lines**
**Net code reduction: ~55 lines + better maintainability**
