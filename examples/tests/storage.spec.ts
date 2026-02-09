import { test, expect } from '@playwright/test';

// Storage example is JS-only (uses manual extern "js" FFI)
const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`storage (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      // Clear localStorage before each test
      await page.goto(`storage/storage.${target}.html`);
      await page.waitForSelector('#contents');
      // Clear any pre-existing storage
      await page.locator('#clear-btn').click();
    });

    test('renders initial UI with empty storage', async ({ page }) => {
      await expect(page.locator('#contents')).toContainText('(empty)');
      await expect(page.locator('#status')).toContainText('Items: 0');
    });

    test('sets and displays a storage item', async ({ page }) => {
      await page.locator('#key-input').fill('greeting');
      await page.locator('#value-input').fill('hello');
      await page.locator('#set-btn').click();
      await expect(page.locator('#contents')).toContainText('greeting = hello');
      await expect(page.locator('#status')).toContainText('Items: 1');
    });

    test('gets an existing item', async ({ page }) => {
      // Set a value first
      await page.locator('#key-input').fill('color');
      await page.locator('#value-input').fill('blue');
      await page.locator('#set-btn').click();
      // Clear the value input and get it back
      await page.locator('#value-input').fill('');
      await page.locator('#key-input').fill('color');
      await page.locator('#get-btn').click();
      await expect(page.locator('#value-input')).toHaveValue('blue');
    });

    test('shows not found for missing key', async ({ page }) => {
      await page.locator('#key-input').fill('nonexistent');
      await page.locator('#get-btn').click();
      await expect(page.locator('#value-input')).toHaveValue('(not found)');
    });

    test('removes a storage item', async ({ page }) => {
      // Set then remove
      await page.locator('#key-input').fill('temp');
      await page.locator('#value-input').fill('data');
      await page.locator('#set-btn').click();
      await expect(page.locator('#status')).toContainText('Items: 1');
      await page.locator('#key-input').fill('temp');
      await page.locator('#remove-btn').click();
      await expect(page.locator('#contents')).toContainText('(empty)');
      await expect(page.locator('#status')).toContainText('Items: 0');
    });

    test('clears all storage items', async ({ page }) => {
      // Set multiple items
      await page.locator('#key-input').fill('a');
      await page.locator('#value-input').fill('1');
      await page.locator('#set-btn').click();
      await page.locator('#key-input').fill('b');
      await page.locator('#value-input').fill('2');
      await page.locator('#set-btn').click();
      await expect(page.locator('#status')).toContainText('Items: 2');
      // Clear all
      await page.locator('#clear-btn').click();
      await expect(page.locator('#contents')).toContainText('(empty)');
      await expect(page.locator('#status')).toContainText('Items: 0');
    });
  });
}
