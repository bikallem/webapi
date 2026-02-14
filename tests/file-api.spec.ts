import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`file-api (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`file-api/file-api.${target}.html`);
      await page.waitForSelector('#blob-info');
    });

    test('displays blob info', async ({ page }) => {
      await expect(page.locator('#blob-info')).toContainText('size=');
      await expect(page.locator('#blob-info')).toContainText('type=text/plain');
    });

    test('displays file info', async ({ page }) => {
      await expect(page.locator('#file-info')).toContainText('name=example.txt');
      await expect(page.locator('#file-info')).toContainText('type=text/plain');
    });

    test('reads blob as text', async ({ page }) => {
      await page.locator('#read-text-btn').click();
      await expect(page.locator('#text-output')).toContainText('Hello from MoonBit Blob!');
    });

    test('reads blob as data URL', async ({ page }) => {
      await page.locator('#read-url-btn').click();
      await expect(page.locator('#url-output')).toContainText('data:');
    });
  });
}
