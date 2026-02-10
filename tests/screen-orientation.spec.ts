import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`screen-orientation (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`screen-orientation/screen-orientation.${target}.html`);
      await page.waitForSelector('#orientation-type');
    });

    test('displays orientation type', async ({ page }) => {
      const text = await page.locator('#orientation-type').textContent();
      expect(text).toMatch(/Type: (portrait|landscape)-(primary|secondary)/);
    });

    test('displays orientation angle', async ({ page }) => {
      const text = await page.locator('#orientation-angle').textContent();
      expect(text).toMatch(/Angle: \d+°/);
    });
  });
}
