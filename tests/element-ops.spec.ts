import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`element-ops (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`element-ops/element-ops.${target}.html`);
      await page.waitForSelector('#template');
    });

    test('clones template', async ({ page }) => {
      await page.locator('#clone-btn').click();
      await page.locator('#clone-btn').click();
      await expect(page.locator('#clone-count')).toContainText('2');
    });

    test('reads attributes', async ({ page }) => {
      await page.locator('#read-attrs-btn').click();
      await expect(page.locator('#attr-display')).toContainText('type=item');
      await expect(page.locator('#attr-display')).toContainText('index=0');
    });

    test('sets attribute', async ({ page }) => {
      await page.locator('#set-attr-btn').click();
      await expect(page.locator('#attr-display')).toContainText('data-status set to');
    });

    test('checks has attribute', async ({ page }) => {
      await page.locator('#has-attr-btn').click();
      await expect(page.locator('#has-result')).toHaveText('false');
      await page.locator('#set-attr-btn').click();
      await page.locator('#has-attr-btn').click();
      await expect(page.locator('#has-result')).toHaveText('true');
    });

    test('inserts before first child', async ({ page }) => {
      await page.locator('#clone-btn').click();
      await page.locator('#insert-btn').click();
      const firstChild = page.locator('#container > *').first();
      await expect(firstChild).toHaveClass(/inserted/);
    });

    test('removes last child', async ({ page }) => {
      await page.locator('#clone-btn').click();
      await page.locator('#clone-btn').click();
      await expect(page.locator('#clone-count')).toContainText('2');
      await page.locator('#remove-last-btn').click();
      await expect(page.locator('#clone-count')).toContainText('1');
    });
  });
}
