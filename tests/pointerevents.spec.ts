import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`pointerevents (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`pointerevents/pointerevents.${target}.html`);
      await page.waitForSelector('#pointer-area');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#pointer-area')).toBeVisible();
      await expect(page.locator('#pointer-info')).toBeVisible();
    });

    test('updates info on pointer move', async ({ page }) => {
      await page.locator('#pointer-area').hover();
      await expect(page.locator('#pointer-info')).toContainText('Pointer ID:', { timeout: 3000 });
      await expect(page.locator('#pointer-info')).toContainText('Type: mouse');
    });
  });
}
