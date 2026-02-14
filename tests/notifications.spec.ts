import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`notifications (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`notifications/notifications.${target}.html`);
      await page.waitForSelector('#permission-status');
    });

    test('renders initial UI with permission status', async ({ page }) => {
      await expect(page.locator('#permission-status')).toContainText('Permission:');
      await expect(page.locator('#request-btn')).toBeVisible();
      await expect(page.locator('#notify-btn')).toBeVisible();
    });

    test('shows valid permission value', async ({ page }) => {
      const text = await page.locator('#permission-status').textContent();
      expect(text).toMatch(/Permission: (default|denied|granted|unsupported)/);
    });
  });
}
