import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`dom (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`dom/dom.${target}.html`);
      await page.waitForSelector('#heading');
    });

    test('creates heading with correct text', async ({ page }) => {
      await expect(page.locator('#heading')).toHaveText('DOM Example');
    });

    test('creates initial list items', async ({ page }) => {
      await expect(page.locator('.item')).toHaveCount(3);
      await expect(page.locator('#status')).toContainText('3');
    });

    test('adds items', async ({ page }) => {
      await page.locator('#add-btn').click();
      await expect(page.locator('.item')).toHaveCount(4);
      await expect(page.locator('#status')).toContainText('4');
    });

    test('removes last item', async ({ page }) => {
      await page.locator('#remove-btn').click();
      await expect(page.locator('.item')).toHaveCount(2);
      await expect(page.locator('#status')).toContainText('2');
    });

    test('clones first item', async ({ page }) => {
      await page.locator('#clone-btn').click();
      await expect(page.locator('.item')).toHaveCount(4);
      await expect(page.locator('#status')).toContainText('4');
    });
  });
}
