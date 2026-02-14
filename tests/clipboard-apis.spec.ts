import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`clipboard-apis (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`clipboard-apis/clipboard-apis.${target}.html`);
      await page.waitForSelector('#input-text');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#input-text')).toBeVisible();
      await expect(page.locator('#copy-btn')).toBeVisible();
      await expect(page.locator('#paste-btn')).toBeVisible();
      await expect(page.locator('#paste-result')).toContainText('Paste result');
    });

    test('copies text to clipboard', async ({ page, context }) => {
      await context.grantPermissions(['clipboard-read', 'clipboard-write']);
      await page.locator('#input-text').fill('test clipboard');
      await page.locator('#copy-btn').click();
      await expect(page.locator('#paste-result')).toContainText('Copied', { timeout: 3000 });
    });
  });
}
