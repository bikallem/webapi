import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`intersection-observer (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`intersection-observer/intersection-observer.${target}.html`);
      await page.waitForSelector('#container');
    });

    test('renders boxes in scrollable container', async ({ page }) => {
      await expect(page.locator('.box')).toHaveCount(5);
      await expect(page.locator('#container')).toBeVisible();
    });

    test('shows intersection log', async ({ page }) => {
      await expect(page.locator('#intersection-log')).toBeVisible();
      // Observer fires on initial observation
      await expect(page.locator('#intersection-log')).not.toHaveText('', { timeout: 3000 });
    });
  });
}
