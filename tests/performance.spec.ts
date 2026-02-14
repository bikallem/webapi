import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`performance (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`performance/performance.${target}.html`);
      await page.waitForSelector('#time-origin');
    });

    test('displays time origin', async ({ page }) => {
      await expect(page.locator('#time-origin')).toContainText('Time origin:');
      const text = await page.locator('#time-origin').textContent();
      expect(text).not.toBe('Time origin:');
    });

    test('displays current time', async ({ page }) => {
      await expect(page.locator('#time-now')).toContainText('ms');
    });

    test('measures computation time', async ({ page }) => {
      await page.locator('#timing-btn').click();
      await expect(page.locator('#timing-output')).toContainText('Elapsed:');
      await expect(page.locator('#timing-output')).toContainText('ms');
    });

    test('shows elapsed since origin', async ({ page }) => {
      await expect(page.locator('#entries-list')).toContainText('Elapsed since origin:');
      await expect(page.locator('#entries-list')).toContainText('ms');
    });
  });
}
