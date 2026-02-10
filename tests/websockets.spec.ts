import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`websockets (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`websockets/websockets.${target}.html`);
      await page.waitForSelector('#ws-status');
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
      // Connect
      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });

      // Disconnect
      await page.locator('#disconnect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Disconnected', { timeout: 5000 });

      // Reconnect
      await page.locator('#connect-btn').click();
      await expect(page.locator('#ws-status')).toContainText('Connected', { timeout: 5000 });
      await expect(page.locator('#messages')).toContainText('Received: Hello from MoonBit!');
    });
  });
}
