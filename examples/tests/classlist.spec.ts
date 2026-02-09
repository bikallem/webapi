import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`classlist (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`classlist/classlist.${target}.html`);
      await page.waitForSelector('#target');
    });

    test('adds class', async ({ page }) => {
      await page.locator('#add-btn').click();
      await expect(page.locator('#target')).toHaveClass(/highlight/);
      await expect(page.locator('#class-status')).toContainText('highlight');
    });

    test('removes class', async ({ page }) => {
      await page.locator('#add-btn').click();
      await expect(page.locator('#target')).toHaveClass(/highlight/);
      await page.locator('#remove-btn').click();
      await expect(page.locator('#target')).not.toHaveClass(/highlight/);
    });

    test('toggles class', async ({ page }) => {
      await page.locator('#toggle-btn').click();
      await expect(page.locator('#target')).toHaveClass(/active/);
      await page.locator('#toggle-btn').click();
      await expect(page.locator('#target')).not.toHaveClass(/active/);
    });

    test('checks contains', async ({ page }) => {
      await page.locator('#has-btn').click();
      await expect(page.locator('#has-result')).toHaveText('false');
      await page.locator('#add-btn').click();
      await page.locator('#has-btn').click();
      await expect(page.locator('#has-result')).toHaveText('true');
    });

    test('replaces class', async ({ page }) => {
      await expect(page.locator('#target')).toHaveClass(/box/);
      await page.locator('#replace-btn').click();
      await expect(page.locator('#target')).not.toHaveClass(/box/);
      await expect(page.locator('#target')).toHaveClass(/hidden/);
    });
  });
}
