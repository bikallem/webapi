import { test, expect } from '@playwright/test';

const TARGETS = ['js'] as const;

for (const target of TARGETS) {
  test.describe(`url (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`url/url.${target}.html`);
      await page.waitForSelector('#protocol');
    });

    test('parses URL components', async ({ page }) => {
      await expect(page.locator('#protocol')).toHaveText('https:');
      await expect(page.locator('#hostname')).toHaveText('example.com');
      await expect(page.locator('#port')).toHaveText('8080');
      await expect(page.locator('#pathname')).toHaveText('/path/to/page');
      await expect(page.locator('#hash')).toHaveText('#section');
    });

    test('reads search params', async ({ page }) => {
      await expect(page.locator('#param-name')).toHaveText('moonbit');
      await expect(page.locator('#param-version')).toHaveText('1');
    });

    test('adds search param', async ({ page }) => {
      await page.locator('#add-param-btn').click();
      await expect(page.locator('#params-display')).toContainText('added=true');
    });

    test('constructs URL from parts', async ({ page }) => {
      await expect(page.locator('#constructed-url')).toContainText('constructed.example.com');
      await expect(page.locator('#constructed-url')).toContainText('key=value');
    });
  });
}
