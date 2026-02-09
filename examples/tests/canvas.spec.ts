import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`canvas (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`canvas/canvas.${target}.html`);
      await page.waitForSelector('canvas');
    });

    test('renders a canvas element', async ({ page }) => {
      const canvas = page.locator('canvas');
      await expect(canvas).toBeVisible();
      await expect(canvas).toHaveAttribute('width', '800');
      await expect(canvas).toHaveAttribute('height', '500');
    });

    test('canvas has non-blank content', async ({ page }) => {
      // Verify the canvas was actually drawn on by checking pixel data
      const hasContent = await page.evaluate(() => {
        const canvas = document.querySelector('canvas')!;
        const ctx = canvas.getContext('2d')!;
        const data = ctx.getImageData(0, 0, canvas.width, canvas.height).data;
        // Check if any pixel is non-transparent
        for (let i = 3; i < data.length; i += 4) {
          if (data[i] !== 0) return true;
        }
        return false;
      });
      expect(hasContent).toBe(true);
    });
  });
}
