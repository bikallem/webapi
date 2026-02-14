import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`vibration (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`vibration/vibration.${target}.html`);
      await page.waitForSelector('#status');
    });

    test('renders all buttons', async ({ page }) => {
      await expect(page.locator('#single-btn')).toBeVisible();
      await expect(page.locator('#pattern-btn')).toBeVisible();
      await expect(page.locator('#stop-btn')).toBeVisible();
      await expect(page.locator('#note')).toBeVisible();
    });

    test('single pulse updates status', async ({ page }) => {
      await page.locator('#single-btn').click();
      await expect(page.locator('#status')).toContainText('Single pulse:');
    });

    test('pattern updates status', async ({ page }) => {
      await page.locator('#pattern-btn').click();
      await expect(page.locator('#status')).toContainText('Pattern:');
    });

    test('stop updates status', async ({ page }) => {
      await page.locator('#stop-btn').click();
      await expect(page.locator('#status')).toContainText('Stop:');
    });
  });
}
