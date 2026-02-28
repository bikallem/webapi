import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`urlpattern (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`urlpattern/urlpattern.${target}.html`);
      await page.waitForSelector('#test-result');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('h1')).toHaveText('URLPattern Demo');
      await expect(page.locator('#test-btn')).toBeVisible();
      await expect(page.locator('#pattern-input')).toBeVisible();
      await expect(page.locator('#url-input')).toBeVisible();
    });

    test('shows static pattern match result', async ({ page }) => {
      await expect(page.locator('#test-url')).toHaveText('https://example.com/users/42');
      await expect(page.locator('#test-result')).toHaveText('true');
    });

    test('shows pathname input from exec', async ({ page }) => {
      await expect(page.locator('#pathname-input')).toHaveText('/users/42');
    });

    test('shows non-matching URL result', async ({ page }) => {
      await expect(page.locator('#nomatch-url')).toHaveText('https://example.com/posts/hello');
      await expect(page.locator('#nomatch-result')).toHaveText('false');
    });

    test('interactive tester matches URL', async ({ page }) => {
      await page.locator('#test-btn').click();
      await expect(page.locator('#interactive-result')).toContainText('Match: true');
    });

    test('interactive tester reports non-match', async ({ page }) => {
      await page.locator('#url-input').fill('https://example.com/other/path');
      await page.locator('#test-btn').click();
      await expect(page.locator('#interactive-result')).toHaveText('Match: false');
    });
  });
}
