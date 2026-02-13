import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`fetch (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      // Mock API endpoints so tests don't depend on external services
      await page.route('**/jsonplaceholder.typicode.com/**', async (route) => {
        const url = route.request().url();
        if (url.includes('/todos/')) {
          await route.fulfill({
            status: 200,
            contentType: 'application/json; charset=utf-8',
            body: JSON.stringify({ userId: 1, id: 1, title: 'delectus aut autem', completed: false }),
          });
        } else if (url.includes('/posts/')) {
          await route.fulfill({
            status: 200,
            contentType: 'application/json; charset=utf-8',
            body: JSON.stringify({ userId: 1, id: 1, title: 'sunt aut facere', body: 'quia et suscipit' }),
          });
        }
      });

      await page.goto(`fetch/fetch.${target}.html`);
      await page.waitForSelector('#status');
    });

    test('renders initial UI with default URL', async ({ page }) => {
      await expect(page.locator('#status')).toHaveText('Ready');
      await expect(page.locator('#url-input')).toHaveValue('https://jsonplaceholder.typicode.com/todos/1');
      await expect(page.locator('#fetch-btn')).toBeVisible();
    });

    test('fetches default URL', async ({ page }) => {
      await page.locator('#fetch-btn').click();
      await expect(page.locator('#status')).toContainText('200');
      await expect(page.locator('#body')).toContainText('delectus aut autem');
    });

    test('fetches user-entered URL', async ({ page }) => {
      await page.locator('#url-input').fill('https://jsonplaceholder.typicode.com/posts/1');
      await page.locator('#fetch-btn').click();
      await expect(page.locator('#status')).toContainText('200');
      await expect(page.locator('#body')).toContainText('sunt aut facere');
    });
  });
}
