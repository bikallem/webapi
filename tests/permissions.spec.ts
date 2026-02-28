import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`permissions (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`permissions/permissions.${target}.html`);
      await page.waitForSelector('#perm-table');
    });

    test('renders initial UI with permission table', async ({ page }) => {
      await expect(page.locator('h1')).toHaveText('Permissions Demo');
      await expect(page.locator('#query-btn')).toBeVisible();
      await expect(page.locator('#perm-table')).toBeVisible();
    });

    test('shows valid permission states after auto-query', async ({ page }) => {
      // Wait briefly for async queries to resolve
      await page.waitForFunction(() => {
        const el = document.getElementById('perm-geolocation');
        return el && el.textContent !== '—' && el.textContent !== 'querying...';
      });
      const text = await page.locator('#perm-geolocation').textContent();
      expect(text).toMatch(/^(granted|denied|prompt|unsupported)$/);
    });

    test('queries all permissions on button click', async ({ page }) => {
      await page.locator('#query-btn').click();
      await page.waitForFunction(() => {
        const el = document.getElementById('perm-notifications');
        return el && el.textContent !== '—' && el.textContent !== 'querying...';
      });
      const text = await page.locator('#perm-notifications').textContent();
      expect(text).toMatch(/^(granted|denied|prompt|unsupported)$/);
    });
  });
}
