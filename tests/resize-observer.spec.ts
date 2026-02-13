import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`resize-observer (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`resize-observer/resize-observer.${target}.html`);
      await page.waitForSelector('#resizable');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#resizable')).toBeVisible();
      await expect(page.locator('#dimensions')).toBeVisible();
    });

    test('shows initial dimensions', async ({ page }) => {
      // ResizeObserver fires on initial observe
      await expect(page.locator('#dimensions')).not.toHaveText('Dimensions: --', { timeout: 3000 });
      const text = await page.locator('#dimensions').textContent();
      expect(text).toMatch(/Dimensions: \d+ x \d+/);
    });
  });
}
