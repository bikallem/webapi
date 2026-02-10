import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`events (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`events/events.${target}.html`);
      await page.waitForSelector('#log');
    });

    test('click bubbles from inner to outer', async ({ page }) => {
      await page.locator('#inner').click();
      const log = page.locator('#log');
      await expect(log).toContainText('Clicked: inner');
      await expect(log).toContainText('Clicked: outer');
    });

    test('logs custom message on button click', async ({ page }) => {
      await page.locator('#custom-btn').click();
      await expect(page.locator('#log')).toContainText('Custom: hello');
    });

    test('once listener fires only once', async ({ page }) => {
      await page.locator('#once-btn').click();
      await expect(page.locator('#log')).toContainText('Once clicked');

      // Get current log text
      const logAfterFirst = await page.locator('#log').textContent();
      const countFirst = (logAfterFirst?.match(/Once clicked/g) || []).length;

      await page.locator('#once-btn').click();
      // Should still have the same count
      const logAfterSecond = await page.locator('#log').textContent();
      const countSecond = (logAfterSecond?.match(/Once clicked/g) || []).length;
      expect(countSecond).toBe(countFirst);
    });
  });
}
