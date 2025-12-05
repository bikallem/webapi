# Package Split Viability Analysis

**Question:** Is it viable to split the MoonBit code generation into several packages (dom, canvas, svg, html_dom, etc.) following the Web API specifications?

**Answer:** **Partially viable** - You can split into multiple packages, but you will encounter a **fundamental cyclic dependency between DOM and Events** that requires careful handling.

## Summary of Findings

### ✅ Non-Cyclic Splits (Viable)

These packages can be separated without circular dependencies:

- **HTML** → DOM (one-way dependency)
- **Canvas** → DOM (one-way, minimal dependency) 
- **SVG** → DOM (one-way dependency)
- **Geometry** (DOMRect, DOMMatrix) → can be independent
- **HTML** → Events (one-way dependency)
- **Canvas** → Events (one-way, minimal dependency)

### ❌ Cyclic Dependency (Problematic)

**DOM ↔ Events** creates an unavoidable bidirectional dependency:

```
DOM → Events:
  - Node trait extends TEventTarget (from Events)
  - Element, Document inherit from Node
  
Events → DOM:
  - Event.target() returns EventTarget
  - Event.currentTarget() returns EventTarget
  - Event.composedPath() returns Array[EventTarget]
```

## Detailed Analysis

### Current Structure

All files currently live in a single `src/` package:
- 200+ MoonBit files
- All types accessible to each other
- No import management needed

### Proposed Package Structure (Option 1: Merged DOM+Events)

**RECOMMENDED** - This avoids all cyclic dependencies:

```
src/
├── core/              # Base types: JsValue, JsPromise, primitives, typed arrays
│   └── moon.pkg.json
├── dom/               # DOM + Events together (Node, Element, Document, Event, EventTarget)
│   └── moon.pkg.json  # imports: core
├── html/              # HTML elements (HTMLElement, HTMLDivElement, etc.)
│   └── moon.pkg.json  # imports: core, dom
├── canvas/            # Canvas 2D API (CanvasRenderingContext2D, etc.)
│   └── moon.pkg.json  # imports: core, dom
├── svg/               # SVG elements
│   └── moon.pkg.json  # imports: core, dom
└── geometry/          # DOMRect, DOMMatrix, DOMPoint
    └── moon.pkg.json  # imports: core
```

**Dependency Graph:**
```
core
  ↑
  ├─ dom (includes events)
  │   ↑
  │   ├─ html
  │   ├─ canvas
  │   └─ svg
  └─ geometry
```

**Pros:**
- ✅ No cyclic dependencies
- ✅ Mirrors Web standards (DOM Level 2 Events was part of DOM spec)
- ✅ Simpler to implement and maintain
- ✅ Fewer packages to manage

**Cons:**
- ❌ DOM package will be larger (~60 files)
- ❌ Less fine-grained modularity

### Alternative Structure (Option 2: Core Package Pattern)

If you want finer separation, extract shared interfaces:

```
src/
├── core/              # EventTarget interface, JsValue, primitives
│   └── moon.pkg.json
├── events/            # Event types, event init types
│   └── moon.pkg.json  # imports: core
├── dom/               # Node, Element, Document
│   └── moon.pkg.json  # imports: core, events
├── html/              # HTML elements
│   └── moon.pkg.json  # imports: core, dom, events
└── ...
```

**How this breaks the cycle:**
1. Extract `EventTarget` to `core` package
2. `events` package defines `Event` types (imports `core` for EventTarget)
3. `dom` package defines `Node` (imports `core` and `events`)
4. No cycle: core → events → dom (one direction only)

**Pros:**
- ✅ No cyclic dependencies
- ✅ More modular separation
- ✅ Events can be used independently if needed

**Cons:**
- ❌ More complex package structure
- ❌ Need to carefully design `core` interface boundaries
- ❌ EventTarget is conceptually part of DOM but lives in core

### What Won't Work (Option 3: Pure Split)

**DO NOT DO THIS** - attempting to split DOM and Events into separate peer packages:

```
src/
├── dom/               # Node, Element, Document
│   └── moon.pkg.json  # imports: events  ← dependency 1
├── events/            # EventTarget, Event
│   └── moon.pkg.json  # imports: dom     ← dependency 2 (CYCLE!)
```

This creates a cycle and **will not compile**.

## Evidence

### Code Evidence

1. **DOM depends on Events** (`node.mbt:64`):
```moonbit
pub trait TNode: TJsValue + TEventTarget {
  // Node extends EventTarget from events package
}
```

2. **Events depends on DOM** (`event.mbt`):
```moonbit
pub trait TEvent {
  target(self : Self) -> EventTarget?
  current_target(self : Self) -> EventTarget?
  composed_path(self : Self) -> Array[EventTarget]
}
```

### Proof of Concept

See `poc_packages/` directory for a minimal example demonstrating the cycle.

## File Categorization

Based on Web API specifications, files would be grouped as:

### DOM Package (~60 files)
```
node.mbt, element.mbt, document.mbt, document_fragment.mbt,
attr.mbt, character_data.mbt, text.mbt, comment.mbt,
event_target.mbt, event.mbt, event_listener.mbt, ...
```

### HTML Package (~20 files)
```
html_element.mbt, html_div_element.mbt, html_canvas_element.mbt,
html_image_element.mbt, html_input_element.mbt, ...
```

### Canvas Package (~30 files)
```
canvas_rendering_context2_d.mbt, canvas_gradient.mbt,
offscreen_canvas.mbt, image_bitmap.mbt, ...
```

### SVG Package (~3 files currently)
```
svg_image_element.mbt, svg_bounding_box_options.mbt, ...
```

### Geometry Package (~11 files)
```
dom_matrix.mbt, dom_rect.mbt, dom_point.mbt, ...
```

### Core Package (~10 files)
```
js_value.mbt, js_promise.mbt, primitives.mbt,
typed_arrays.mbt, ...
```

## Recommendations

### For Clean Architecture
Choose **Option 1** (Merged DOM+Events):
- Keeps DOM and Events together
- No cyclic dependencies
- Simplest to implement
- Aligns with historical Web standards

### For Maximum Modularity  
Choose **Option 2** (Core Package Pattern):
- Extract EventTarget to core
- Breaks the cycle via layering
- More complex but more modular

### Migration Path

1. **Phase 1**: Create packages without breaking the monolith
   - Keep current `src/` as is
   - Create new package structure alongside
   - Start copying files to new packages
   
2. **Phase 2**: Update imports progressively
   - Move core/primitives first
   - Then geometry (independent)
   - Then dom+events
   - Finally html, canvas, svg

3. **Phase 3**: Remove old monolith
   - Once all imports are updated
   - Delete original `src/` package

## Testing the Split

To verify this analysis, try creating the package structure:

```bash
# This will work (no cycle)
mkdir -p src/core src/dom src/html

# But attempting to separate dom and events will fail
mkdir -p src/dom src/events
# Add cross-imports between them → build error
```

## Conclusion

**YES, you can split the code into multiple packages**, but you **CANNOT separate DOM from Events** without either:

1. Keeping them together (Option 1 - RECOMMENDED)
2. Creating a core package with shared interfaces (Option 2)
3. Fundamentally redesigning the API (NOT recommended)

The cyclic dependency between DOM and Events is **not a bug** - it's inherent to the Web API design where:
- DOM nodes are event targets (inheritance)
- Events reference their target nodes (composition)

Choose Option 1 for simplicity or Option 2 for modularity. Both are viable solutions.
