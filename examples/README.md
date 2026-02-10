# Examples

Browser examples demonstrating MoonBit WebAPI bindings. Each example has a JS target HTML file (`<name>.js.html`) and most also have a wasm-gc target (`<name>.wasm.html`).

| Example | Description |
|---------|-------------|
| canvas | 2D canvas drawing with shapes, gradients, and animation |
| classlist | Add/remove/toggle CSS classes via `DOMTokenList` |
| counter | Simple click counter (JS + wasm-gc) |
| dom | Create, modify, and remove DOM elements |
| element-ops | Insert, replace, and clone elements |
| events | Mouse, keyboard, and custom event handling |
| fetch | Async HTTP requests with `fetch()` |
| forms | Form input handling and validation |
| storage | `localStorage` get/set/remove/clear |
| timers | `setTimeout` and `setInterval` |
| url | URL parsing and manipulation |

## Build

```bash
# JS target
moon -C examples build --target js

# wasm-gc target
moon -C examples build --target wasm-gc
```

## Run

Serve the repo root and open the examples index:

```bash
npx serve .
# then open http://localhost:3000/examples/
```

Or open individual examples directly, e.g. `http://localhost:3000/examples/canvas/canvas.js.html`.
