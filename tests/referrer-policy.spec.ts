import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`referrer-policy (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`referrer-policy/referrer-policy.${target}.html`);
      await page.waitForSelector('#policy-table');
    });

    test('shows table with 9 policy rows', async ({ page }) => {
      await expect(page.locator('#policy-table tbody tr')).toHaveCount(9);
    });

    test('parses valid policy string', async ({ page }) => {
      await page.locator('#parse-input').fill('no-referrer');
      await page.locator('#parse-btn').click();
      await expect(page.locator('#parse-output')).toContainText('Parsed: no-referrer');
    });

    test('shows error for invalid policy', async ({ page }) => {
      await page.locator('#parse-input').fill('invalid-policy');
      await page.locator('#parse-btn').click();
      await expect(page.locator('#parse-output')).toContainText('Invalid');
    });
  });
}
