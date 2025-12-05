# Duplication Analysis - Quick Reference

## Severity Breakdown

```
CRITICAL (1 issue, 75 lines)
├─ External Type + TJsValue Pattern (5 files)
│  └─ Repeated in: interface.ts, callback.ts, dictionary.ts, typedef.ts, union.ts

HIGH (3 issues, 112 lines)
├─ Union Type Checking & Filtering (3 files, 70 lines)
├─ FFI Safety Type Checking (3 files, 24 lines)
└─ Nullable Unwrapping Pattern (3+ files, 18+ lines)

MEDIUM (3 issues, 120+ lines)
├─ Type Conversion Expression Building (4 files, 50+ lines)
├─ Parameter List Building (3 files, 30 lines)
└─ Type Registration Pattern (1 file, 40 lines)

LOW (2 issues, ~14 lines)
├─ Trait Naming Patterns (3 files, 6 lines)
└─ FFI Name Generation (3 files, 8 lines)
```

## Files Most Affected

| File | Issue Count | Lines | Status |
|------|------------|-------|--------|
| `emitter/method.ts` | 5 | ~120 | Complex, monolithic (592 lines) |
| `mapping.ts` | 2 | ~40 | Dumping ground pattern (576 lines) |
| `emitter/property.ts` | 4 | ~90 | Duplicates from method.ts |
| `emitter/constructor.ts` | 3 | ~40 | Duplicates conversion logic |
| `emitter/interface.ts` | 2 | ~20 | Shares patterns with other emitters |
| `emitter/callback.ts` | 1 | ~15 | Shares external type pattern |
| `emitter/dictionary.ts` | 2 | ~35 | Shares external type + conversion |
| `emitter/typedef.ts` | 1 | ~15 | Shares external type pattern |
| `emitter/union.ts` | 2 | ~15 | Shares union + external type patterns |

## Top Duplications by Impact

### 1. 🔴 CRITICAL: External Type Declaration (75 lines)
```typescript
// Repeated 5 times in: interface.ts, callback.ts, dictionary.ts, typedef.ts, union.ts
#external
pub type ${name}

pub impl TJsValue for ${name} with to_js(self : ${name}) -> JsValue = "%identity"
```
**Action:** Extract to `emitter/common.ts`

### 2. 🔴 HIGH: Union Type Detection & Conversion (70 lines)
```typescript
// Repeated in: method.ts, union.ts, property.ts
const filtered = getFilteredUnionMembers(unionType);
if (filtered.length <= 1) return "";
// ... member type conversion logic ...
```
**Action:** Extract to `emitter/unionUtils.ts`

### 3. 🔴 HIGH: Optional Parameter Unwrapping (18+ lines)
```typescript
// Repeated in: method.ts (3x), property.ts, constructor.ts
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}
if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
  // handle union
}
```
**Action:** Extract to `emitter/typeUtils.ts`

### 4. 🟡 MEDIUM: Type Conversion Expression Builder (50+ lines)
```typescript
// Repeated in: property.ts, constructor.ts, method.ts, dictionary.ts
if (mapped.isOptional) {
  // handle optional conversion
} else if (isKnownEnum(mapped.moonbitType)) {
  // handle enum conversion
} else {
  // handle regular conversion
}
```
**Action:** Extract to `emitter/conversionUtils.ts`

## Refactoring Checklist

### Phase 1: CRITICAL
- [ ] Create `emitter/common.ts`
  - [ ] `emitExternalType(typeName: string)`
  - [ ] `emitTJsValueImpl(typeName: string)`
- [ ] Update: interface.ts, callback.ts, dictionary.ts, typedef.ts, union.ts
- [ ] Run tests

### Phase 2: HIGH
- [ ] Create `emitter/unionUtils.ts`
  - [ ] `getUnionMemberMoonbitType(memberType)`
  - [ ] `getFilteredUnionMembers(unionType)`
  - [ ] `isUnionType(type)`
  - [ ] `getCollapsedUnionType(unionType)`
- [ ] Create `emitter/typeUtils.ts`
  - [ ] `unwrapNullableType(type)`
  - [ ] `isUnionType(type)` (already in unionUtils, but referenced here)
- [ ] Create `emitter/ffiUtils.ts`
  - [ ] `isFfiSafeType(moonbitType)`
- [ ] Update: method.ts, property.ts, constructor.ts
- [ ] Run tests

### Phase 3: MEDIUM
- [ ] Create `emitter/conversionUtils.ts`
  - [ ] `buildOptionalConversion(...)`
  - [ ] `buildEnumConversion(...)`
  - [ ] `buildUnionConversion(...)`
- [ ] Create `emitter/parameterBuilder.ts`
  - [ ] `buildParamDeclaration(...)`
  - [ ] `buildParameterList(...)`
- [ ] Refactor `mapping.ts` registry pattern to use generic `TypeRegistry` class
- [ ] Update: method.ts, property.ts, constructor.ts, dictionary.ts
- [ ] Run tests

### Phase 4: LOW
- [ ] Extract `capitalizeFirstLetter()` to `utils.ts`
- [ ] Centralize `getFfiName()` from method.ts and use in property.ts, constructor.ts
- [ ] Run tests

## Estimated Impact

**Before:** 
- 9 duplication patterns
- ~390 duplicated lines
- 5+ files with similar external type logic
- 3+ files with union handling divergence

**After Refactoring:**
- 0 duplication patterns for common logic
- Reduced lines through shared utilities
- Single source of truth for each pattern
- Easier maintenance and bug fixes
- Consistent behavior across emitters

---

## Files to Create

1. `webapi-gen/emitter/common.ts` - Shared type/trait emission patterns
2. `webapi-gen/emitter/unionUtils.ts` - Union type utilities
3. `webapi-gen/emitter/typeUtils.ts` - Type unwrapping/conversion utilities
4. `webapi-gen/emitter/ffiUtils.ts` - FFI safety checking
5. `webapi-gen/emitter/conversionUtils.ts` - Type conversion builders
6. `webapi-gen/emitter/parameterBuilder.ts` - Parameter list building
7. Update `webapi-gen/mapping.ts` - Refactor to use TypeRegistry class

## Commands to Verify Refactoring

```bash
# Run type checking
moon check --target js

# Run tests
moon test

# Build and generate
make all

# Check for remaining duplications (after refactoring)
grep -r "emitExternalType\|emitTJsValueImpl" webapi-gen/emitter/*.ts
```
