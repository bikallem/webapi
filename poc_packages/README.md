# Proof of Concept: Cyclic Dependency Demonstration

This directory contains a minimal proof-of-concept that demonstrates the **cyclic dependency** between DOM and Events packages.

## The Cycle

### DOM package depends on Events package:
- `node.mbt` defines `TNode` trait that extends `TEventTarget`
- This requires importing the `events` package
- See `dom/moon.pkg.json` - it imports `events`

### Events package depends on DOM package:
- `event.mbt` defines `TEvent` trait with methods that return `Node` or `EventTarget`
- In real Web APIs, `Event.target` returns an `EventTarget` (which Node implements)
- To properly type this, events package needs to reference DOM types
- See `events/moon.pkg.json` - it imports `dom`

## Why This Happens

This is not a bug - it's a fundamental characteristic of the Web API design:

1. **Inheritance**: DOM nodes (Node, Element, Document) inherit from EventTarget
   - This means DOM must know about EventTarget interface
   
2. **Composition**: Events contain references to their target nodes
   - Event.target, Event.currentTarget return EventTarget
   - This means Events must know about EventTarget/Node types

The bidirectional relationship creates a cycle:
```
DOM (Node extends EventTarget) → Events (defines EventTarget)
Events (Event.target returns Node/EventTarget) → DOM (defines Node)
```

## Attempting to Build This POC

If you try to build these packages, you would get a cyclic dependency error because:
- `dom` package imports `events` package
- `events` package imports `dom` package
- MoonBit (and most build systems) cannot resolve such cycles

## Solutions

See the main analysis document for recommended solutions to this problem.

The key insight is that **this cycle cannot be broken** without either:
1. Keeping DOM and Events in the same package
2. Creating a third "core" package with base interfaces
3. Fundamentally changing the API design (not recommended)
