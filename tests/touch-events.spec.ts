import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`touch-events (${target})`, () => {
    test.use({ hasTouch: true });
    test.beforeEach(async ({ page }) => {
      await page.goto(`touch-events/touch-events.${target}.html`);
      await page.waitForSelector('#touch-area');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#touch-area')).toBeVisible();
      await expect(page.locator('#touch-info')).toContainText('Touch info');
    });

    test('responds to touch events', async ({ page }) => {
      // Emulate touch
      await page.locator('#touch-area').tap();
      await expect(page.locator('#touch-info')).toContainText('Event:', { timeout: 3000 });
    });
  });
}
