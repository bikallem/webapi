import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`geometry (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`geometry/geometry.${target}.html`);
      await page.waitForSelector('#point-info');
    });

    test('displays point info', async ({ page }) => {
      await expect(page.locator('#point-info')).toContainText('x=10');
      await expect(page.locator('#point-info')).toContainText('y=20');
    });

    test('displays rect info', async ({ page }) => {
      await expect(page.locator('#rect-info')).toContainText('x=50');
      await expect(page.locator('#rect-info')).toContainText('w=200');
      await expect(page.locator('#rect-info')).toContainText('h=150');
    });

    test('displays matrix info', async ({ page }) => {
      await expect(page.locator('#matrix-info')).toContainText('isIdentity=true');
    });

    test('displays quad bounds', async ({ page }) => {
      await expect(page.locator('#quad-info')).toContainText('w=100');
      await expect(page.locator('#quad-info')).toContainText('h=100');
    });

    test('transforms point', async ({ page }) => {
      await page.locator('#transform-btn').click();
      await expect(page.locator('#transform-output')).toContainText('x=110');
      await expect(page.locator('#transform-output')).toContainText('y=220');
    });
  });
}
