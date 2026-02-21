import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`web-components (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`web-components/web-components.${target}.html`);
      await page.waitForSelector('#counter-1');
    });

    test('renders two counters with initial count 0', async ({ page }) => {
      const counters = page.locator('my-counter');
      await expect(counters).toHaveCount(2);
      // Check shadow DOM display shows 0
      const display1 = page.locator('#counter-1').locator('[data-ref=display]');
      await expect(display1).toHaveText('0');
      const display2 = page.locator('#counter-2').locator('[data-ref=display]');
      await expect(display2).toHaveText('0');
    });

    test('increment and decrement work independently', async ({ page }) => {
      // Increment counter-1 twice
      const inc1 = page.locator('#counter-1').locator('[data-ref=inc]');
      await inc1.click();
      await inc1.click();
      await expect(page.locator('#counter-1').locator('[data-ref=display]')).toHaveText('2');

      // Counter-2 should still be 0
      await expect(page.locator('#counter-2').locator('[data-ref=display]')).toHaveText('0');

      // Decrement counter-2
      const dec2 = page.locator('#counter-2').locator('[data-ref=dec]');
      await dec2.click();
      await expect(page.locator('#counter-2').locator('[data-ref=display]')).toHaveText('-1');
    });

    test('reset works', async ({ page }) => {
      const inc1 = page.locator('#counter-1').locator('[data-ref=inc]');
      await inc1.click();
      await inc1.click();
      await inc1.click();
      await expect(page.locator('#counter-1').locator('[data-ref=display]')).toHaveText('3');

      const reset1 = page.locator('#counter-1').locator('[data-ref=reset]');
      await reset1.click();
      await expect(page.locator('#counter-1').locator('[data-ref=display]')).toHaveText('0');
    });

    test('custom event log updates on count change', async ({ page }) => {
      const inc1 = page.locator('#counter-1').locator('[data-ref=inc]');
      await inc1.click();
      await expect(page.locator('#event-log')).toContainText('counter-1');
    });
  });
}
