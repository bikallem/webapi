# Code Duplication Analysis: webapi-gen Directory

## Executive Summary

Found **9 major duplication patterns** across the codebase affecting ~400+ lines of duplicated logic. Severity ranges from **critical** (architectural pattern duplication) to **low** (minor repeated expressions).

---

## 1. **CRITICAL: External Type + TJsValue Declaration Pattern** (5 files)

### Files Affected
- `emitter/interface.ts` (line 74-85)
- `emitter/callback.ts` (line 48-57)
- `emitter/dictionary.ts` (line 16-25)
- `emitter/typedef.ts` (line 18-28)
- `emitter/union.ts` (line 235-236)

### Description
All five emitters duplicate the identical pattern of emitting external type declarations and TJsValue implementations:

```typescript
// Pattern appears 5 times with minor variations:
function emitExternalType(entity: ParsedEntity): string {
  return `///|
#external
pub type ${entity.name}`;
}

function emitTJsValueImpl(entity: ParsedEntity): string {
  return `///|
pub impl TJsValue for ${entity.name} with to_js(self : ${entity.name}) -> JsValue = "%identity"`;
}
```

### Duplicated Lines
- **~15 lines per file** = 75 total duplicated lines

### Severity
**CRITICAL** - This is a fundamental architectural pattern that should be centralized. The identical implementation across 5 different emitters violates DRY principle.

### Recommendation
Extract to `emitter/common.ts`:
```typescript
export function emitExternalType(typeName: string): string {
  return `///|
#external
pub type ${typeName}`;
}

export function emitTJsValueImpl(typeName: string): string {
  return `///|
pub impl TJsValue for ${typeName} with to_js(self : ${typeName}) -> JsValue = "%identity"`;
}
```

---

## 2. **HIGH: Union Type Checking & Filtering** (method.ts, union.ts, property.ts)

### Files Affected
- `emitter/method.ts` (lines 24-87, 156-170)
- `emitter/union.ts` (lines 29-41, 115-145)
- `emitter/property.ts` (lines 56-68)

### Description
Multiple implementations of:
- `getUnionMemberMoonbitType()` - converts union member types to MoonBit names
- `getFilteredUnionMembers()` - filters and deduplicates union members
- Union type checking logic: `typeToCheck.type === "union" && typeToCheck.memberTypes`

### Example Duplication
```typescript
// method.ts (2 locations):
function getUnionMemberMoonbitType(memberType: ParsedType): string {
  switch (memberType.type) {
    case "primitive": /* ... */
    case "reference": return memberType.name || "JsValue";
    default: return "JsValue";
  }
}

// union.ts (similar implementation):
function getMemberTypeName(memberType: ParsedType): string {
  const mapped = mapIdlType(memberType);
  return mapped.moonbitType;
}

// property.ts (union detection code):
if (prop.type.type === "union") {
  // Union handling logic
}
```

### Duplicated Lines
- **~40 lines** (union member type conversion logic)
- **~30 lines** (union filtering logic)
- Total: **~70 lines**

### Severity
**HIGH** - Significant duplicate logic with different implementations that could diverge. Makes maintaining union handling across the codebase fragile.

### Recommendation
Extract union utilities to `emitter/unionUtils.ts`:
```typescript
export function getUnionMemberMoonbitType(memberType: ParsedType): string { }
export function getFilteredUnionMembers(unionType: ParsedType): ParsedType[] { }
export function isUnionType(typeToCheck: ParsedType): boolean { }
export function getCollapsedUnionType(unionType: ParsedType): string | undefined { }
```

---

## 3. **HIGH: FFI Safety Type Checking** (method.ts, property.ts, constructor.ts)

### Files Affected
- `emitter/property.ts` (lines 108-113)
- `emitter/constructor.ts` (lines 72-76)
- `emitter/method.ts` (implicit in logic, lines 305-450)

### Description
All three emitters implement FFI type safety checks - determining whether a MoonBit type can be safely passed directly to FFI vs. requiring conversion through JsValue.

### Example Duplication
```typescript
// property.ts:
function isFfiSafeType(moonbitType: string): boolean {
  if (moonbitType.includes("[") || moonbitType.includes("?")) return false;
  const safePrimitives = ["Bool", "Int", "Int64", "Double", "String", "Unit", "JsValue"];
  return safePrimitives.includes(moonbitType);
}

// constructor.ts (inline):
const allFfiSafe = constructor.params.every(p => {
  const mapped = mapIdlType(p.type);
  return !mapped.moonbitType.includes("[") && !mapped.moonbitType.startsWith("&");
});
```

### Duplicated Lines
- **~8 lines** per location, **3 locations** = **~24 lines**

### Severity
**HIGH** - Different implementations across files (one uses `includes("[")`, other checks `startsWith("&")`). Changes to FFI safety rules require updating multiple places.

### Recommendation
Extract to `emitter/ffiUtils.ts`:
```typescript
export function isFfiSafeType(moonbitType: string): boolean {
  return !moonbitType.includes("[") && 
         !moonbitType.includes("?") && 
         !moonbitType.startsWith("&") &&
         ["Bool", "Int", "Int64", "Double", "String", "Unit", "JsValue"].includes(moonbitType);
}
```

---

## 4. **HIGH: Union Type Extraction & Nullable Unwrapping** (method.ts, property.ts, union.ts)

### Files Affected
- `emitter/method.ts` (lines 157-170, 285-290, 335-340)
- `emitter/property.ts` (lines 13-23)
- `emitter/constructor.ts` (implied)

### Description
Repeated pattern of unwrapping nullable types to check for inner union:
```typescript
// Appears 3+ times:
let typeToCheck = param.type;
if (typeToCheck.type === "nullable" && typeToCheck.elementType) {
  typeToCheck = typeToCheck.elementType;
}
if (typeToCheck.type === "union" && typeToCheck.memberTypes) {
  // Union handling
}
```

### Duplicated Lines
- **~6 lines per occurrence** × **3+ occurrences** = **~18+ lines**

### Severity
**HIGH** - The pattern is identical and should be a utility function. Easy to introduce bugs if modified in one place but not others.

### Recommendation
```typescript
export function unwrapNullableType(type: ParsedType): ParsedType {
  if (type.type === "nullable" && type.elementType) {
    return type.elementType;
  }
  return type;
}

export function isUnionType(type: ParsedType): boolean {
  return type.type === "union" && !!type.memberTypes;
}
```

---

## 5. **MEDIUM: Type Conversion Expression Building** (property.ts, constructor.ts, method.ts, dictionary.ts)

### Files Affected
- `emitter/property.ts` (lines 169-200)
- `emitter/constructor.ts` (lines 92-140)
- `emitter/method.ts` (lines 370-440)
- `emitter/dictionary.ts` (lines 102-122)

### Description
Multiple implementations of logic to convert parameters to JsValue with optional handling:

```typescript
// property.ts:
if (mapped.isOptional) {
  bodyExpr = `${ffiName}(self.to_js()).as_option()`;
} else if (isKnownEnum(mapped.moonbitType)) {
  bodyExpr = `${mapped.moonbitType}::from(${ffiName}(self.to_js()).unsafe_cast()).unwrap()`;
} else {
  bodyExpr = `${ffiName}(self.to_js()).unsafe_cast()`;
}

// constructor.ts (similar logic, lines 92-140):
if (param.optional) {
  callArgs.push(`match ${paramName} { Some(v) => TJsValue::to_js(v), None => JsValue::undefined() }`);
}

// method.ts (similar logic, lines 395-430):
if (param.optional) {
  const jsVarName = `${paramName}_js`;
  letBindings.push(`let ${jsVarName} = opt_to_js(${paramName})`);
}
```

### Duplicated Lines
- **~50+ lines** of similar logic spread across 4 files

### Severity
**MEDIUM** - Similar patterns but with slight variations (match expressions vs. opt_to_js calls). The inconsistency could lead to bugs.

### Recommendation
Extract conversion builders to `emitter/conversionUtils.ts`:
```typescript
export function buildOptionalConversion(paramName: string, type: ParsedType): string { }
export function buildEnumConversion(paramName: string, enumType: string): string { }
export function buildUnionConversion(paramName: string, type: ParsedType): string { }
```

---

## 6. **MEDIUM: Parameter List Building** (method.ts, property.ts, constructor.ts)

### Files Affected
- `emitter/method.ts` (lines 182-210, 315-360)
- `emitter/property.ts` (lines 45-52)
- `emitter/constructor.ts` (lines 36-60)

### Description
Three similar implementations of building parameter lists with optional handling:

```typescript
// method.ts (trait signature):
const params: string[] = ["self : Self"];
for (const param of method.params) {
  const paramName = escapeKeyword(toSnakeCase(param.name));
  // ... type determination ...
  if (param.optional) {
    params.push(`${paramName}? : ${paramType}`);
  } else {
    params.push(`${paramName} : ${paramType}`);
  }
}

// constructor.ts:
for (const param of constructor.params) {
  const paramName = escapeKeyword(toSnakeCase(param.name));
  if (param.optional) {
    const defaultVal = param.default ? /* ... */ : undefined;
    if (defaultVal) {
      params.push(`${paramName}? : ${mapped.moonbitType} = ${defaultVal}`);
    } else {
      params.push(`${paramName}? : ${mapped.moonbitType}`);
    }
  } else {
    params.push(`${paramName} : ${mapped.moonbitType}`);
  }
}
```

### Duplicated Lines
- **~30 lines** of parameter building logic

### Severity
**MEDIUM** - Repeated structure with slight variations. Easy to introduce inconsistencies in parameter formatting.

### Recommendation
Create `emitter/parameterBuilder.ts`:
```typescript
export function buildParamDeclaration(
  name: string,
  type: ParsedType,
  optional: boolean,
  defaultValue?: string,
  includeDefault: boolean = false
): string { }

export function buildParameterList(
  params: ParsedParam[],
  options: { includeDefaults?: boolean; selfFirst?: boolean }
): string[] { }
```

---

## 7. **MEDIUM: External Type Registration Pattern** (mapping.ts, widlprocess.ts)

### Files Affected
- `emitter/interface.ts` (uses mapping functions)
- `emitter/enum.ts` (uses mapping functions)
- `mapping.ts` (lines 114-180)

### Description
Multiple places checking if types are known/registered with similar patterns:

```typescript
// mapping.ts has multiple registration functions:
export function registerDictionaries(names: Iterable<string>): void { }
export function registerEnums(names: Iterable<string>): void { }
export function isKnownDictionary(name: string): boolean { }
export function isKnownEnum(name: string): boolean { }
export function registerUnionType(name: string, memberTypes: string[]): void { }
export function isKnownUnionType(name: string): boolean { }

// Plus manual Set declarations:
const KNOWN_INTERFACES = new Set([...]);
const KNOWN_TYPEDEFS = new Set([...]);
const KNOWN_DICTIONARIES = new Set<string>();
const KNOWN_ENUMS = new Set<string>();
```

### Duplicated Lines
- **~40 lines** of boilerplate registration/checking logic

### Severity
**MEDIUM** - Repetitive registration pattern. Each new entity type requires duplicating the Set + register/check functions.

### Recommendation
Create generic registry pattern in `mapping.ts`:
```typescript
class TypeRegistry<T> {
  private registry = new Set<T>();
  register(items: Iterable<T>): void { }
  isKnown(item: T): boolean { }
}

export const INTERFACES_REGISTRY = new TypeRegistry<string>();
export const ENUMS_REGISTRY = new TypeRegistry<string>();
export const DICTIONARIES_REGISTRY = new TypeRegistry<string>();
```

---

## 8. **LOW: Trait Naming Patterns** (method.ts, property.ts, union.ts)

### Files Affected
- `emitter/method.ts` (line 36-39)
- `emitter/property.ts` (line 61-67)
- `emitter/union.ts` (line 65-70)

### Description
Similar logic for generating trait names from context:

```typescript
// method.ts:
function getUnionArgTraitName(methodName: string, paramName: string): string {
  const methodCapitalized = methodName.charAt(0).toUpperCase() + methodName.slice(1);
  const paramCapitalized = paramName.charAt(0).toUpperCase() + paramName.slice(1);
  return `T${methodCapitalized}${paramCapitalized}Arg`;
}

// property.ts:
if (prop.type.type === "union") {
  return prop.name.charAt(0).toUpperCase() + prop.name.slice(1);
}
```

### Duplicated Lines
- **~6 lines** (minor)

### Severity
**LOW** - Minor naming convention logic. Could be consolidated but impact is low.

### Recommendation
Extract to `utils.ts`:
```typescript
export function capitalizeFirstLetter(str: string): string {
  return str.charAt(0).toUpperCase() + str.slice(1);
}
```

---

## 9. **LOW: FFI Name Generation** (method.ts, property.ts, constructor.ts)

### Files Affected
- `emitter/method.ts` (line 29-30)
- `emitter/property.ts` (line 119, 140)
- `emitter/constructor.ts` (line 80)

### Description
Similar FFI name generation patterns:

```typescript
// method.ts:
function getFfiName(interfaceName: string, methodName: string): string {
  return `${toSnakeCase(interfaceName)}_${toSnakeCase(methodName)}_ffi`;
}

// property.ts (inline):
const ffiName = `${toSnakeCase(iface.name)}_${toSnakeCase(prop.name)}_ffi`;
const ffiName = `${toSnakeCase(iface.name)}_set_${toSnakeCase(prop.name)}_ffi`;

// constructor.ts (inline):
const ffiName = `${toSnakeCase(iface.name)}_new${index > 0 ? index + 1 : ""}_ffi`;
```

### Duplicated Lines
- **~8 lines** (trivial)

### Severity
**LOW** - Already mostly centralized in method.ts, but some inline versions in property.ts.

### Recommendation
Export from `method.ts` and use consistently:
```typescript
export function getFfiName(interfaceName: string, methodName: string, suffix: string = ""): string {
  const method = methodName + suffix;
  return `${toSnakeCase(interfaceName)}_${toSnakeCase(method)}_ffi`;
}
```

---

## Summary Table

| # | Issue | Severity | Files | Lines | Recommendation |
|---|-------|----------|-------|-------|-----------------|
| 1 | External Type + TJsValue | **CRITICAL** | 5 | 75 | Extract to `emitter/common.ts` |
| 2 | Union Type Checking | **HIGH** | 3 | 70 | Extract to `emitter/unionUtils.ts` |
| 3 | FFI Safety Checking | **HIGH** | 3 | 24 | Extract to `emitter/ffiUtils.ts` |
| 4 | Nullable Unwrapping | **HIGH** | 3+ | 18+ | Extract to `emitter/typeUtils.ts` |
| 5 | Type Conversion Building | **MEDIUM** | 4 | 50+ | Extract to `emitter/conversionUtils.ts` |
| 6 | Parameter List Building | **MEDIUM** | 3 | 30 | Extract to `emitter/parameterBuilder.ts` |
| 7 | Type Registration Pattern | **MEDIUM** | 1 | 40 | Create generic `TypeRegistry` class |
| 8 | Trait Naming | **LOW** | 3 | 6 | Extract to `utils.ts` |
| 9 | FFI Name Generation | **LOW** | 3 | 8 | Centralize in `method.ts` |

**Total Duplicated Lines: ~390+**

---

## Refactoring Priority

### Phase 1 (CRITICAL - Do First)
- Extract common external type and TJsValue patterns
- Extract union utilities
- Extract FFI safety checking

**Impact:** Eliminates ~170 lines, prevents bugs from divergent implementations

### Phase 2 (HIGH - Do Next)
- Extract nullable unwrapping utilities
- Create reusable parameter list builder

**Impact:** Simplifies method/property/constructor emitters significantly

### Phase 3 (MEDIUM - Do Later)
- Refactor type registration to use generic registry
- Extract type conversion builders
- Consolidate trait naming logic

**Impact:** Better maintainability and consistency

### Phase 4 (LOW - Polish)
- Centralize FFI name generation
- Extract minor naming utilities

**Impact:** Code cleanliness and consistency

---

## Broader Code Quality Observations

1. **Mapping.ts is a dumping ground** - Contains 576 lines with multiple responsibilities. Consider splitting into:
   - `mapping/primitives.ts` - Type mappings
   - `mapping/conversion.ts` - Conversion logic
   - `mapping/registry.ts` - Type registration

2. **Method.ts is too large** - 592 lines with multiple concerns. Could be split into:
   - `method/traits.ts` - Trait signature generation
   - `method/ffi.ts` - FFI function generation
   - `method/impl.ts` - Implementation generation

3. **Emitter files are monolithic** - Each emitter (interface, callback, dictionary, typedef) has 150-300+ lines. Consider using composition with common builders.

4. **No shared test utilities** - Would catch divergent implementations of the same logic.

---

## Next Steps

1. ✅ Review this analysis
2. 📋 Create `emitter/common.ts` with shared patterns
3. 🔧 Update all emitters to use common utilities
4. ✅ Run tests to ensure no regressions
5. 📝 Document the shared patterns
6. 🔄 Continue with Phase 2 refactoring
