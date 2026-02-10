import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`fullscreen (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`fullscreen/fullscreen.${target}.html`);
      await page.waitForSelector('#fullscreen-target');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#fullscreen-target')).toBeVisible();
      await expect(page.locator('#toggle-btn')).toBeVisible();
      await expect(page.locator('#status')).toContainText('fullscreenEnabled');
    });

    test('shows fullscreenEnabled status', async ({ page }) => {
      const text = await page.locator('#status').textContent();
      expect(text).toMatch(/fullscreenEnabled: (true|false)/);
    });
  });
}
