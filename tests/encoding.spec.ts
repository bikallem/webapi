import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`encoding (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`encoding/encoding.${target}.html`);
      await page.waitForSelector('#input-text');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#input-text')).toBeVisible();
      await expect(page.locator('#encode-btn')).toBeVisible();
      await expect(page.locator('#byte-length')).toHaveText('Byte length: --');
      await expect(page.locator('#decoded-text')).toHaveText('Decoded: --');
    });

    test('encodes and decodes text', async ({ page }) => {
      await page.locator('#input-text').fill('Hello');
      await page.locator('#encode-btn').click();
      await expect(page.locator('#byte-length')).toHaveText('Byte length: 5');
      await expect(page.locator('#decoded-text')).toHaveText('Decoded: Hello');
    });

    test('handles unicode correctly', async ({ page }) => {
      await page.locator('#input-text').fill('\u{1F30D}');
      await page.locator('#encode-btn').click();
      await expect(page.locator('#byte-length')).toHaveText('Byte length: 4');
      await expect(page.locator('#decoded-text')).toHaveText('Decoded: \u{1F30D}');
    });
  });
}
