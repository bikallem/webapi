import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`web-animations (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`web-animations/web-animations.${target}.html`);
      await page.waitForSelector('#box');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#box')).toBeVisible();
      await expect(page.locator('#state')).toContainText('State:');
      await expect(page.locator('button')).toHaveCount(4);
    });

    test('shows running state initially', async ({ page }) => {
      await expect(page.locator('#state')).toContainText('running');
    });

    test('pause changes state to paused', async ({ page }) => {
      await page.locator('#pause-btn').click();
      await expect(page.locator('#state')).toContainText('paused');
    });

    test('cancel changes state to idle', async ({ page }) => {
      await page.locator('#cancel-btn').click();
      await expect(page.locator('#state')).toContainText('idle');
    });

    test('play after cancel restarts animation', async ({ page }) => {
      await page.locator('#cancel-btn').click();
      await expect(page.locator('#state')).toContainText('idle');
      await page.locator('#play-btn').click();
      await expect(page.locator('#state')).toContainText('running');
    });
  });
}
