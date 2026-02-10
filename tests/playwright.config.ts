import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: '.',
  timeout: 5_000,
  use: {
    baseURL: 'http://localhost:3000/examples/',
  },
  webServer: {
    command: 'npx serve .. -l 3000 --no-clipboard --no-request-logging --symlinks',
    port: 3000,
    reuseExistingServer: !process.env.CI,
  },
  projects: [
    { name: 'chromium', use: { browserName: 'chromium' } },
  ],
});
