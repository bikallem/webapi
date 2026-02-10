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
    });

    test('connect attempt changes status', async ({ page }) => {
      await page.locator('#connect-btn').click();
      // Status should change from Disconnected to something else
      await expect(page.locator('#ws-status')).not.toHaveText('Status: Disconnected', { timeout: 3000 });
    });
  });
}
