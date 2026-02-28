import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`file-system-access (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`file-system-access/file-system-access.${target}.html`);
      await page.waitForSelector('#pick-btn');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('h1')).toHaveText('File System Access Demo');
      await expect(page.locator('#pick-btn')).toBeVisible();
      await expect(page.locator('#file-info')).toHaveText('No file selected.');
    });
  });
}
