import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`requestidlecallback (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`requestidlecallback/requestidlecallback.${target}.html`);
      await page.waitForSelector('#idle-status');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#idle-status')).toHaveText('Ready');
      await expect(page.locator('#schedule-btn')).toBeVisible();
    });

    test('schedules and fires idle callback', async ({ page }) => {
      await page.locator('#schedule-btn').click();
      // Wait for the idle callback to fire
      await expect(page.locator('#idle-status')).toContainText('Callback fired', { timeout: 5000 });
      await expect(page.locator('#time-remaining')).not.toHaveText('');
    });
  });
}
