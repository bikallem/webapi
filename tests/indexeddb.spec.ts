import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`indexeddb (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`indexeddb/indexeddb.${target}.html`);
      await page.waitForSelector('#status');
      // Wait for database to be ready
      await expect(page.locator('#status')).toContainText('Database ready', { timeout: 5000 });
      // Clear any existing data
      await page.locator('#clear-btn').click();
      await expect(page.locator('#result')).toContainText('All items cleared');
    });

    test('renders initial UI with database ready', async ({ page }) => {
      await expect(page.locator('#status')).toContainText('Database ready');
      await expect(page.locator('#key-input')).toBeVisible();
      await expect(page.locator('#value-input')).toBeVisible();
    });

    test('puts and gets an item', async ({ page }) => {
      await page.locator('#key-input').fill('greeting');
      await page.locator('#value-input').fill('hello');
      await page.locator('#put-btn').click();
      await expect(page.locator('#result')).toContainText('Put: greeting = hello');

      // Now get it back
      await page.locator('#key-input').fill('greeting');
      await page.locator('#get-btn').click();
      await expect(page.locator('#result')).toContainText('Found: greeting = hello');
    });

    test('reports not found for missing key', async ({ page }) => {
      await page.locator('#key-input').fill('nonexistent');
      await page.locator('#get-btn').click();
      await expect(page.locator('#result')).toContainText('Not found: nonexistent');
    });

    test('deletes an item', async ({ page }) => {
      // Add an item first
      await page.locator('#key-input').fill('temp');
      await page.locator('#value-input').fill('value');
      await page.locator('#put-btn').click();
      await expect(page.locator('#result')).toContainText('Put: temp = value');

      // Delete it
      await page.locator('#key-input').fill('temp');
      await page.locator('#delete-btn').click();
      await expect(page.locator('#result')).toContainText('Deleted: temp');

      // Verify it's gone
      await page.locator('#key-input').fill('temp');
      await page.locator('#get-btn').click();
      await expect(page.locator('#result')).toContainText('Not found: temp');
    });

    test('clears all items', async ({ page }) => {
      // Add items
      await page.locator('#key-input').fill('a');
      await page.locator('#value-input').fill('1');
      await page.locator('#put-btn').click();
      await expect(page.locator('#result')).toContainText('Put: a = 1');

      await page.locator('#key-input').fill('b');
      await page.locator('#value-input').fill('2');
      await page.locator('#put-btn').click();
      await expect(page.locator('#result')).toContainText('Put: b = 2');

      // Clear all
      await page.locator('#clear-btn').click();
      await expect(page.locator('#result')).toContainText('All items cleared');

      // Verify both are gone
      await page.locator('#key-input').fill('a');
      await page.locator('#get-btn').click();
      await expect(page.locator('#result')).toContainText('Not found: a');
    });
  });
}
