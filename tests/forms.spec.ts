import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`forms (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`forms/forms.${target}.html`);
      await page.waitForSelector('#form');
    });

    test('validates empty required field as invalid', async ({ page }) => {
      await page.locator('#validate-btn').click();
      await expect(page.locator('#validity-status')).toHaveText('Invalid');
    });

    test('validates filled required field as valid', async ({ page }) => {
      await page.locator('#name-input').fill('John');
      await page.locator('#validate-btn').click();
      await expect(page.locator('#validity-status')).toHaveText('Valid');
    });

    test('submits form values', async ({ page }) => {
      await page.locator('#name-input').fill('Alice');
      await page.locator('#agree-check').check();
      await page.locator('#color-select').selectOption('blue');
      await page.locator('#comment-area').fill('Hello');
      await page.locator('#submit-btn').click();

      const output = page.locator('#output');
      await expect(output).toContainText('Alice');
      await expect(output).toContainText('true');
      await expect(output).toContainText('blue');
      await expect(output).toContainText('Hello');
    });

    test('updates current value on input', async ({ page }) => {
      await page.locator('#name-input').fill('Test');
      await expect(page.locator('#current-values')).toContainText('Test');
    });
  });
}
