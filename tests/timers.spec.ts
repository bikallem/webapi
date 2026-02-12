import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`timers (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`timers/timers.${target}.html`);
      await page.waitForSelector('#counter');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#counter')).toHaveText('Counter: 0');
      await expect(page.locator('#interval-status')).toHaveText('Stopped');
      await expect(page.locator('#start-btn')).toBeVisible();
      await expect(page.locator('#stop-btn')).toBeVisible();
      await expect(page.locator('#delay-btn')).toBeVisible();
    });

    test('starts and increments counter', async ({ page }) => {
      await page.locator('#start-btn').click();
      await expect(page.locator('#interval-status')).toHaveText('Running');
      // Wait for at least 2 increments (500ms each)
      await expect(page.locator('#counter')).not.toHaveText('Counter: 0', { timeout: 3000 });
    });

    test('stops counter', async ({ page }) => {
      await page.locator('#start-btn').click();
      // Let it run a bit
      await expect(page.locator('#counter')).not.toHaveText('Counter: 0', { timeout: 3000 });
      await page.locator('#stop-btn').click();
      await expect(page.locator('#interval-status')).toHaveText('Stopped');
      // Record value and verify it stops
      const text = await page.locator('#counter').textContent();
      await page.waitForTimeout(700);
      await expect(page.locator('#counter')).toHaveText(text!);
    });

    test('shows delayed message after timeout', async ({ page }) => {
      await expect(page.locator('#delay-msg')).toHaveText('');
      await page.locator('#delay-btn').click();
      await expect(page.locator('#delay-msg')).toHaveText('Waiting...');
      await expect(page.locator('#delay-msg')).toHaveText('Hello from setTimeout!', { timeout: 3000 });
    });
  });
}
