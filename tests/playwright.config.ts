import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: '.',
  // Some example pages allow up to 10s for wasm startup before assertions run,
  // so each test needs enough headroom for navigation plus async expectations.
  timeout: 20_000,
  expect: {
    timeout: 5_000,
  },
  use: {
    baseURL: 'http://localhost:3000/examples/',
  },
  webServer: [
    {
      command: 'python3 -m http.server 3000 --directory ..',
      port: 3000,
      reuseExistingServer: !process.env.CI,
    },
    {
      command: 'node ws-echo-server.mjs',
      port: 8765,
      reuseExistingServer: !process.env.CI,
    },
  ],
  projects: [
    { name: 'chromium', use: { browserName: 'chromium' } },
  ],
});
