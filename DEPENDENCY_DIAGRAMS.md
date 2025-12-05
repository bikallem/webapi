# Package Dependency Diagrams

## Current State: Single Package

```
┌─────────────────────────────────────────┐
│            src/ (monolith)              │
│                                         │
│  • All 200+ .mbt files                  │
│  • No import management needed          │
│  • Everything accessible to everything  │
└─────────────────────────────────────────┘
```

## Proposed Option 1: Merged DOM+Events (RECOMMENDED)

```
                    ┌──────────┐
                    │   core   │
                    │          │
                    │ JsValue  │
                    │ JsPromise│
                    │ primitives│
                    └────┬─────┘
                         │
        ┌────────────────┼────────────────┐
        │                │                │
        ▼                ▼                ▼
   ┌─────────┐      ┌─────────┐    ┌──────────┐
   │   dom   │      │geometry │    │  canvas  │
   │         │      │         │    │          │
   │  Node   │      │DOMRect  │    │Canvas2D  │
   │ Element │      │DOMMatrix│    │Gradient  │
   │Document │      │DOMPoint │    │Pattern   │
   │  Event  │      └─────────┘    └────┬─────┘
   │EventTarget│                        │
   └────┬────┘                          │
        │                                │
        └────────────┬───────────────────┘
                     │
                     ▼
                ┌─────────┐
                │  html   │
                │         │
                │HTMLElement│
                │HTMLDiv  │
                │HTMLCanvas│
                └─────────┘
```

**Legend:**
- Box = Package
- Arrow (→) = "imports" / "depends on"

**Dependency Flow:**
```
core (no dependencies)
  ↑
  ├─→ dom (imports core) - includes events
  ├─→ geometry (imports core)
  └─→ canvas (imports core)
       ↑
       ├─→ html (imports core, dom)
       └─→ svg (imports core, dom)
```

## Proposed Option 2: Core Pattern (More Modular)

```
                    ┌──────────┐
                    │   core   │
                    │          │
                    │EventTarget│
                    │ JsValue  │
                    │ primitives│
                    └────┬─────┘
                         │
        ┌────────────────┼────────────────┐
        │                │                │
        ▼                ▼                ▼
   ┌─────────┐      ┌─────────┐    ┌──────────┐
   │ events  │      │geometry │    │  canvas  │
   │         │      │         │    │          │
   │  Event  │      │DOMRect  │    │Canvas2D  │
   │UIEvent  │      │DOMMatrix│    │Gradient  │
   │MouseEvent│      │DOMPoint│    └────┬─────┘
   └────┬────┘      └─────────┘         │
        │                                │
        ▼                                │
   ┌─────────┐                          │
   │   dom   │                          │
   │         │                          │
   │  Node   │◄─────────────────────────┘
   │ Element │
   │Document │
   └────┬────┘
        │
        ▼
   ┌─────────┐
   │  html   │
   │         │
   │HTMLElement│
   │HTMLDiv  │
   │HTMLCanvas│
   └─────────┘
```

**Dependency Flow:**
```
core (no dependencies)
  ↑
  ├─→ events (imports core)
  ├─→ geometry (imports core)
  └─→ canvas (imports core)
       ↑
       └─→ dom (imports core, events)
            ↑
            ├─→ html (imports core, dom, events)
            └─→ svg (imports core, dom)
```

## THE CYCLE - What NOT to Do

```
   ┌─────────┐
   │   dom   │
   │         │
   │  Node   │───┐
   │ Element │   │ dom imports events
   │Document │   │ (Node extends EventTarget)
   └────┬────┘   │
        │        │
        │        ▼
        │   ┌─────────┐
        │   │ events  │
        │   │         │
        │   │EventTarget│
        └──►│  Event  │
            │         │
            └─────────┘
            events imports dom
            (Event.target returns EventTarget/Node)

    ❌ CYCLIC DEPENDENCY ❌
       WILL NOT COMPILE
```

**Why the cycle exists:**

1. **Inheritance (DOM → Events):**
   ```moonbit
   // In dom package
   pub trait TNode: TEventTarget {  // Needs TEventTarget from events
     ...
   }
   ```

2. **Composition (Events → DOM):**
   ```moonbit
   // In events package  
   pub trait TEvent {
     target(self : Self) -> EventTarget?  // Returns EventTarget (which Node implements)
   }
   ```

## Cross-Package Dependencies Matrix

```
        │ core │ events │ dom │ html │ canvas │ svg │ geometry
────────┼──────┼────────┼─────┼──────┼────────┼─────┼──────────
core    │  -   │   -    │  -  │  -   │   -    │  -  │    -
events  │  ✓   │   -    │  ✓  │  -   │   -    │  -  │    -
dom     │  ✓   │   ✓    │  -  │  -   │   -    │  -  │    -
html    │  ✓   │   ✓    │  ✓  │  -   │   ✓    │  -  │    -
canvas  │  ✓   │   ✓    │  ✓  │  -   │   -    │  -  │    -
svg     │  ✓   │   -    │  ✓  │  -   │   -    │  -  │    -
geometry│  ✓   │   -    │  -  │  -   │   -    │  -  │    -
```

**✓** = imports / depends on
**-** = no dependency

**Cycles identified:**
- **events ↔ dom**: Events imports dom (✓) AND dom imports events (✓) = CYCLE

## Solution Comparison

### Option 1: Merge DOM+Events

```
Pros:
  ✓ No cyclic dependencies
  ✓ Simpler structure (fewer packages)
  ✓ Historical precedent (DOM L2 Events)
  ✓ Easier to maintain

Cons:
  ✗ Larger package size (~60 files)
  ✗ Less separation of concerns
```

### Option 2: Core Package Pattern

```
Pros:
  ✓ No cyclic dependencies
  ✓ Better separation of concerns
  ✓ Events can be used independently
  ✓ More modular

Cons:
  ✗ More complex (extra core package)
  ✗ EventTarget feels "misplaced" in core
  ✗ More packages to manage
```

## File Distribution

### Option 1 Package Sizes

```
core     : ~10 files  ████
dom      : ~60 files  ████████████████████████████████
html     : ~20 files  ██████████
canvas   : ~30 files  ███████████████
svg      : ~3 files   █
geometry : ~11 files  ████
```

### Option 2 Package Sizes

```
core     : ~12 files  █████
events   : ~40 files  ████████████████████
dom      : ~20 files  ██████████
html     : ~20 files  ██████████
canvas   : ~30 files  ███████████████
svg      : ~3 files   █
geometry : ~11 files  ████
```

## Conclusion

Both Option 1 and Option 2 are viable. The choice depends on your priorities:

- **Simplicity** → Choose Option 1 (Merged DOM+Events)
- **Modularity** → Choose Option 2 (Core Package Pattern)

**Do NOT** attempt to create separate peer packages for DOM and Events without a core layer - this will create an unresolvable cyclic dependency.
