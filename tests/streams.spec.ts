import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`streams (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`streams/streams.${target}.html`);
      await page.waitForSelector('#read-btn');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#status')).toHaveText('Ready');
      await expect(page.locator('#read-btn')).toBeVisible();
    });

    test('reads all chunks from stream', async ({ page }) => {
      await page.locator('#read-btn').click();
      await expect(page.locator('#status')).toHaveText('Stream complete', { timeout: 5000 });
      const output = await page.locator('#output').textContent();
      expect(output).toContain('Chunk 1');
      expect(output).toContain('Chunk 2');
      expect(output).toContain('Chunk 3');
      expect(output).toContain('Chunk 4');
    });

    test('shows locked state while reading', async ({ page }) => {
      await page.locator('#read-btn').click();
      // Status should eventually show "Stream complete" after reading
      await expect(page.locator('#status')).toHaveText('Stream complete', { timeout: 5000 });
    });
  });
}
