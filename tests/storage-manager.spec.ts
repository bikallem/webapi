import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`storage-manager (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`storage-manager/storage-manager.${target}.html`);
      await page.waitForSelector('#status');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#status')).toContainText('Click the button');
      await expect(page.locator('#estimate-btn')).toBeVisible();
    });

    test('gets storage estimate', async ({ page }) => {
      await page.locator('#estimate-btn').click();
      await expect(page.locator('#status')).not.toContainText('Click the button', { timeout: 5000 });
    });
  });
}
