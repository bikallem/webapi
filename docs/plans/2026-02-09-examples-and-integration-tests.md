# Examples and Integration Tests Design

## Goal

Create a suite of examples that each demonstrate a category of Web APIs, and serve double duty as Playwright integration tests against both the JS and wasm-gc compilation targets.

## Directory Structure

```
examples/
  counter/                  # existing
    main.mbt
    counter.js.html
    counter.wasm.html
    moon.pkg
  canvas/                   # existing
    main.mbt
    canvas.js.html
    canvas.wasm.html
    moon.pkg
  dom/                      # new
    main.mbt
    dom.js.html
    dom.wasm.html
    moon.pkg
  events/                   # new
    main.mbt
    events.js.html
    events.wasm.html
    moon.pkg
  fetch/                    # new
    main.mbt
    fetch.js.html
    fetch.wasm.html
    moon.pkg
  url/                      # new
    main.mbt
    url.js.html
    url.wasm.html
    moon.pkg
  storage/                  # new
    main.mbt
    storage.js.html
    storage.wasm.html
    moon.pkg
  timers/                   # new
    main.mbt
    timers.js.html
    timers.wasm.html
    moon.pkg
  forms/                    # new
    main.mbt
    forms.js.html
    forms.wasm.html
    moon.pkg
  tests/                    # new - Playwright test suite
    package.json
    playwright.config.ts
    counter.spec.ts
    canvas.spec.ts
    dom.spec.ts
    events.spec.ts
    fetch.spec.ts
    url.spec.ts
    storage.spec.ts
    timers.spec.ts
    forms.spec.ts
  moon.mod.json             # existing
```

## Example Catalog

Each example is a self-contained MoonBit program that builds its entire UI programmatically (no pre-existing DOM beyond `<body>`).

### dom/

**APIs**: `createElement`, `querySelector`, `querySelectorAll`, `classList`, `setAttribute`, `getAttribute`, `textContent`, `innerHTML`, `appendChild`, `removeChild`, `cloneNode`.

**What it builds**: A structured page with a heading, a list of items, and buttons to add/remove/clone items. Demonstrates DOM tree construction, querying, and mutation.

**Playwright assertions**: Elements exist with correct tag names, classes, attributes, and text. After clicking add/remove/clone buttons, the tree structure updates as expected.

### events/

**APIs**: `addEventListener`, `removeEventListener`, `CustomEvent`, `dispatchEvent`, event properties (`target`, `type`, `preventDefault`), bubbling.

**What it builds**: A nested div structure with click handlers at each level. A log area displays the order events fire. A button dispatches a custom event. Another button removes its own listener after first click.

**Playwright assertions**: Clicking an inner element produces the correct bubbling order in the log. Custom event fires with correct detail. Removed listener does not fire on second click.

### fetch/

**APIs**: `fetch()`, `Request`, `Response`, `Headers`, JSON body parsing, status codes.

**What it builds**: A page with buttons that trigger various fetch calls. Results are rendered into the DOM (response status, headers, parsed JSON body).

**Playwright assertions**: Uses `page.route()` to intercept network requests and return mock responses. Verifies the MoonBit code correctly reads status, headers, and JSON from the Response.

### url/

**APIs**: `URL` constructor, `searchParams`, `hostname`, `pathname`, `hash`, `URLSearchParams` get/set/append/iteration.

**What it builds**: A page that parses a hardcoded URL and renders each component (protocol, host, path, params) into labeled elements. Also constructs a URL from parts and displays the result.

**Playwright assertions**: Each rendered component matches the expected parsed value. Constructed URL string is correct.

### storage/

**APIs**: `localStorage.setItem`, `getItem`, `removeItem`, `clear`, `length`, `key`. Same for `sessionStorage`.

**What it builds**: A page with input fields and buttons to set, get, remove, and clear storage entries. Current storage contents are displayed in a list.

**Playwright assertions**: Set a value, verify it appears in the display. Remove it, verify it disappears. Clear all, verify empty. Checks both localStorage and sessionStorage.

### timers/

**APIs**: `setTimeout`, `setInterval`, `clearInterval`.

**What it builds**: A page with a counter that increments every 500ms via `setInterval`. A "stop" button calls `clearInterval`. A separate section uses `setTimeout` to show a delayed message.

**Playwright assertions**: Wait for the counter to reach a certain value. Click stop, verify it stops incrementing. Verify the delayed message appears after the timeout.

### forms/

**APIs**: `HTMLInputElement` (value, checked, type), `HTMLSelectElement` (value, selectedIndex), `HTMLTextAreaElement`, `HTMLFormElement`, `ValidityState`, `checkValidity`.

**What it builds**: A form with text input, checkbox, select dropdown, textarea, and a submit button. A validation status area shows whether the form is valid. On submit, displays the collected values.

**Playwright assertions**: Fill inputs, toggle checkbox, select option, verify displayed values. Check validation messages for required fields. Submit and verify output.

## Dual-Target Testing

Each example produces two HTML files:
- `{name}.js.html` loads the JS-compiled output
- `{name}.wasm.html` loads the wasm-gc compiled output via `webapi.mjs`

Every Playwright test runs against both HTML variants:

```typescript
const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`dom (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`/dom/dom.${target}.html`);
    });

    test('creates elements with correct attributes', async ({ page }) => {
      await expect(page.locator('#heading')).toHaveText('DOM Example');
      await expect(page.locator('.item')).toHaveCount(3);
    });
  });
}
```

This ensures both the `extern "js"` FFI path and the `webapi.mjs` wasm import path produce identical behavior.

## Build and Test Pipeline

```bash
# 1. Compile all examples for both targets
cd examples
moon build --target js
moon build --target wasm-gc

# 2. Run Playwright tests
cd tests
npm ci
npx playwright install --with-deps chromium
npx playwright test
```

## Playwright Configuration

```typescript
// examples/tests/playwright.config.ts
import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: '.',
  timeout: 30_000,
  use: {
    baseURL: 'http://localhost:3000',
  },
  webServer: {
    command: 'npx serve .. -l 3000 --no-clipboard',
    port: 3000,
    reuseExistingServer: !process.env.CI,
  },
  projects: [
    { name: 'chromium', use: { browserName: 'chromium' } },
  ],
});
```

The `serve` package serves the `examples/` directory as static files. Playwright's `webServer` config starts it automatically before tests and stops it after.

## Fetch Test Network Mocking

The fetch example calls real-looking URLs. Playwright intercepts them:

```typescript
test('fetches JSON data', async ({ page }) => {
  await page.route('/api/data', route =>
    route.fulfill({
      status: 200,
      contentType: 'application/json',
      body: JSON.stringify({ name: 'test', count: 42 }),
    })
  );
  await page.goto(`/fetch/fetch.${target}.html`);
  await expect(page.locator('#response-status')).toHaveText('200');
  await expect(page.locator('#response-body')).toContainText('test');
});
```

No real backend needed.

## CI Workflow

New file: `.github/workflows/test.yml`

```yaml
name: Test
on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: nicott/setup-moonbit@v1

      - uses: actions/setup-node@v4
        with:
          node-version: 22

      # Install WebIDL dependencies (needed for moon check)
      - run: npm ci

      # Code generator tests
      - run: cd webapi_gen && moon test

      # Type-check both targets
      - run: moon check --target js
      - run: moon check --target wasm-gc

      # Build examples for both targets
      - run: cd examples && moon build --target js
      - run: cd examples && moon build --target wasm-gc

      # Playwright integration tests
      - run: cd examples/tests && npm ci
      - run: cd examples/tests && npx playwright install --with-deps chromium
      - run: cd examples/tests && npx playwright test

      # Upload test report on failure
      - uses: actions/upload-artifact@v4
        if: failure()
        with:
          name: playwright-report
          path: examples/tests/playwright-report/
```

## moon.pkg Template for New Examples

Each new example uses this `moon.pkg`:

```
import {
  "bikallem/webapi",
}

options(
  "is-main": true,
  link: {
    "wasm-gc": {
      "imported-string-constants": "_",
      "use-js-builtin-string": true,
    },
  },
  "supported-targets": [ "js", "wasm-gc" ],
)
```

## HTML Template for New Examples

**JS variant** (`{name}.js.html`):
```html
<!DOCTYPE html>
<html>
<head><title>{Name} Example</title></head>
<body>
  <script type="module" src="../target/js/release/build/{name}/{name}.js"></script>
</body>
</html>
```

**Wasm-gc variant** (`{name}.wasm.html`):
```html
<!DOCTYPE html>
<html>
<head><title>{Name} Example</title></head>
<body>
  <script type="module">
    import { wasmImportObject } from "../../src/webapi.mjs";
    const { instance } = await WebAssembly.instantiateStreaming(
      fetch("../target/wasm-gc/release/build/{name}/{name}.wasm"),
      wasmImportObject,
      { builtins: ["js-string"], importedStringConstants: "_" }
    );
    instance.exports._start();
  </script>
</body>
</html>
```

## Implementation Order

1. Set up Playwright infrastructure (`examples/tests/`)
2. Write tests for existing examples (counter, canvas) to validate the setup
3. Implement new examples one at a time, each with its test:
   - dom
   - events
   - fetch
   - url
   - storage
   - timers
   - forms
4. Add CI workflow
5. Verify CI passes
