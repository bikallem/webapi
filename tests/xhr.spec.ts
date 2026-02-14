import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`xhr (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.route('**/jsonplaceholder.typicode.com/**', async (route) => {
        await route.fulfill({
          status: 200,
          contentType: 'application/json; charset=utf-8',
          body: JSON.stringify({ userId: 1, id: 1, title: 'mock todo', completed: false }),
        });
      });

      await page.goto(`xhr/xhr.${target}.html`);
      await page.waitForSelector('#status');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#status')).toHaveText('Ready');
      await expect(page.locator('#url-input')).toHaveValue('https://jsonplaceholder.typicode.com/todos/1');
      await expect(page.locator('#send-btn')).toBeVisible();
    });

    test('sends request and shows response', async ({ page }) => {
      await page.locator('#send-btn').click();
      await expect(page.locator('#status')).toContainText('200');
      await expect(page.locator('#body')).toContainText('mock todo');
    });

    test('logs readyState transitions', async ({ page }) => {
      await page.locator('#send-btn').click();
      await expect(page.locator('#log')).toContainText('DONE');
    });
  });
}
