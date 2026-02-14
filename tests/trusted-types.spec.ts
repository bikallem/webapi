import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`trusted-types (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`trusted-types/trusted-types.${target}.html`);
      await page.waitForSelector('#policy-name');
    });

    test('shows policy name', async ({ page }) => {
      await expect(page.locator('#policy-name')).toContainText('myPolicy');
    });

    test('creates trusted HTML', async ({ page }) => {
      await expect(page.locator('#trusted-output')).toContainText('Trusted HTML:');
      await expect(page.locator('#trusted-output')).toContainText('&lt;b&gt;');
    });

    test('isHTML returns true for trusted value', async ({ page }) => {
      await expect(page.locator('#is-html-result')).toContainText('true');
    });

    test('isHTML returns false for plain string', async ({ page }) => {
      await expect(page.locator('#is-html2-result')).toContainText('false');
    });
  });
}
