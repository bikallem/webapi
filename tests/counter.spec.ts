import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`counter (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`counter/counter.${target}.html`);
      await page.waitForSelector('#count-display');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#count-display')).toHaveText('0');
      await expect(page.locator('button')).toHaveCount(3);
    });

    test('increments count', async ({ page }) => {
      await page.locator('button', { hasText: '+' }).click();
      await expect(page.locator('#count-display')).toHaveText('1');
      await page.locator('button', { hasText: '+' }).click();
      await expect(page.locator('#count-display')).toHaveText('2');
    });

    test('decrements count', async ({ page }) => {
      await page.locator('button', { hasText: '+' }).click();
      await page.locator('button', { hasText: '+' }).click();
      await expect(page.locator('#count-display')).toHaveText('2');
      // The decrement button uses a minus sign (−)
      await page.locator('button').first().click();
      await expect(page.locator('#count-display')).toHaveText('1');
    });

    test('resets count', async ({ page }) => {
      await page.locator('button', { hasText: '+' }).click();
      await page.locator('button', { hasText: '+' }).click();
      await expect(page.locator('#count-display')).toHaveText('2');
      await page.locator('button', { hasText: 'Reset' }).click();
      await expect(page.locator('#count-display')).toHaveText('0');
    });
  });
}
