import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`svg (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`svg/svg.${target}.html`);
      await page.waitForSelector('#svg-canvas');
    });

    test('renders SVG elements', async ({ page }) => {
      await expect(page.locator('#svg-canvas')).toBeVisible();
      await expect(page.locator('#my-circle')).toBeVisible();
      await expect(page.locator('#my-rect')).toBeVisible();
      await expect(page.locator('#my-text')).toHaveText('MoonBit SVG');
    });

    test('gets bounding box', async ({ page }) => {
      await page.locator('#bbox-btn').click();
      await expect(page.locator('#bbox-output')).toContainText('BBox:');
      await expect(page.locator('#bbox-output')).toContainText('w=');
    });

    test('changes colors', async ({ page }) => {
      await page.locator('#color-btn').click();
      await expect(page.locator('#my-circle')).toHaveAttribute('fill', '#2ecc71');
      await expect(page.locator('#my-rect')).toHaveAttribute('fill', '#9b59b6');
    });
  });
}
