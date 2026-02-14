import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;
const LOCAL_WS = 'ws://localhost:8765';

for (const target of TARGETS) {
  test.describe(`websockets (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`websockets/websockets.${target}.html`);
      await page.waitForSelector('#ws-status');
      // Override default URL with local echo server for testing
      await page.locator('#ws-url').fill(LOCAL_WS);
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#ws-status')).toHaveText('Status: Disconnected');
      await expect(page.locator('#connect-btn')).toBeVisible();
      await expect(page.locator('#disconnect-btn')).toBeVisible();
      await expect(page.locator('#messages')).toBeVisible();
      await expect(page.locator('#ws-url')).toBeVisible();
    });

    test('connects to echo server', async ({ page }) => {
      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });
      await expect(page.locator('#messages')).toContainText('Received: Hello from MoonBit!', { timeout: 5000 });
    });

    test('disconnects cleanly', async ({ page }) => {
      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });
      await page.locator('#disconnect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Disconnected', { timeout: 5000 });
    });

    test('reconnects after disconnect', async ({ page }) => {
      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });

      await page.locator('#disconnect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Disconnected', { timeout: 5000 });

      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });
      await expect(page.locator('#messages')).toContainText('Received: Hello from MoonBit!');
    });
  });
}
