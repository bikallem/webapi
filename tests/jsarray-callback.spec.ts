import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`jsarray-callback (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      const startupErrors: string[] = [];
      page.on('pageerror', err => startupErrors.push(`pageerror: ${err.message}`));
      page.on('console', msg => {
        if (msg.type() === 'error') {
          startupErrors.push(`console.error: ${msg.text()}`);
        }
      });
      await page.goto(`jsarray-callback/jsarray-callback.${target}.html`);
      try {
        await page.waitForSelector('#panel', { timeout: 10_000 });
        await page.waitForSelector('#log', { timeout: 10_000 });
      } catch (_e) {
        const bodyText = (await page.locator('body').textContent()) ?? '';
        throw new Error(
          `page startup failed for target=${target}\n${startupErrors.join('\n')}\nbody=${bodyText.slice(0, 500)}`,
        );
      }
    });

    test('renders panel and control buttons', async ({ page }) => {
      await expect(page.locator('#panel')).toBeVisible();
      await expect(page.getByRole('button', { name: 'Grow' })).toBeVisible();
      await expect(page.getByRole('button', { name: 'Shrink' })).toBeVisible();
    });

    test('updates callback batch log after resize-triggering action', async ({ page }) => {
      await page.getByRole('button', { name: 'Grow' }).click();
      await expect(page.locator('#log')).toContainText('callback batch size:', {
        timeout: 5000,
      });
      await expect(page.locator('#log')).toContainText(/- \d+ x \d+/, {
        timeout: 5000,
      });
    });
  });
}
