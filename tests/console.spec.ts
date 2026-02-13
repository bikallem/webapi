import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`console (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`console/console.${target}.html`);
      await page.waitForSelector('h1');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('h1')).toHaveText('Console API Demo');
      // Should have multiple buttons for the various console methods
      const buttons = page.locator('button');
      await expect(buttons).not.toHaveCount(0);
    });

    test('emits console.log on load', async ({ page }) => {
      const logs: string[] = [];
      page.on('console', (msg) => {
        if (msg.type() === 'log') logs.push(msg.text());
      });
      await page.reload();
      await page.waitForSelector('h1');
      expect(logs.some((l) => l.includes('Console API demo loaded'))).toBe(true);
    });

    test('log button emits console.log', async ({ page }) => {
      const logs: string[] = [];
      page.on('console', (msg) => {
        if (msg.type() === 'log') logs.push(msg.text());
      });
      await page.locator('button', { hasText: 'log' }).first().click();
      await page.waitForTimeout(200);
      expect(logs.some((l) => l.includes('Hello from MoonBit!'))).toBe(true);
    });

    test('warn button emits console.warn', async ({ page }) => {
      const warnings: string[] = [];
      page.on('console', (msg) => {
        if (msg.type() === 'warning') warnings.push(msg.text());
      });
      await page.locator('button', { hasText: 'warn' }).click();
      await page.waitForTimeout(200);
      expect(warnings.some((w) => w.includes('Warning message'))).toBe(true);
    });

    test('error button emits console.error', async ({ page }) => {
      const errors: string[] = [];
      page.on('console', (msg) => {
        if (msg.type() === 'error') errors.push(msg.text());
      });
      await page.locator('button', { hasText: 'error' }).click();
      await page.waitForTimeout(200);
      expect(errors.some((e) => e.includes('Error message'))).toBe(true);
    });
  });
}
