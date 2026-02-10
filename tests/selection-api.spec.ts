import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`selection-api (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`selection-api/selection-api.${target}.html`);
      await page.waitForSelector('#selection-info');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#text-content')).toBeVisible();
      await expect(page.locator('#select-all-btn')).toBeVisible();
      await expect(page.locator('#selection-info')).toContainText('No selection');
    });

    test('select all updates selection info', async ({ page }) => {
      await page.locator('#select-all-btn').click();
      await expect(page.locator('#selection-info')).toContainText('Type: Range');
      await expect(page.locator('#selection-info')).toContainText('Select some of this text');
    });
  });
}
