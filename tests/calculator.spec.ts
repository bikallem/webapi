import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`calculator (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`calculator/calculator.${target}.html`);
      await page.waitForSelector('#calc-display');
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('#calc-display')).toHaveText('0');
      await expect(page.locator('#calc-status')).toHaveText('');
    });

    test('enters digits', async ({ page }) => {
      await page.locator('button', { hasText: '1' }).click();
      await page.locator('button', { hasText: '2' }).click();
      await page.locator('button', { hasText: '3' }).click();
      await expect(page.locator('#calc-display')).toHaveText('123');
    });

    test('adds two numbers', async ({ page }) => {
      await page.locator('button', { hasText: '5' }).click();
      await page.locator('button', { hasText: /^\+$/ }).click();
      await page.locator('button', { hasText: '3' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('8');
    });

    test('subtracts two numbers', async ({ page }) => {
      await page.locator('button', { hasText: '9' }).click();
      await page.locator('button', { hasText: /^-$/ }).click();
      await page.locator('button', { hasText: '4' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('5');
    });

    test('multiplies two numbers', async ({ page }) => {
      await page.locator('button', { hasText: '6' }).click();
      await page.locator('button', { hasText: '*' }).click();
      await page.locator('button', { hasText: '7' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('42');
    });

    test('divides two numbers', async ({ page }) => {
      await page.locator('button', { hasText: '8' }).click();
      await page.locator('button', { hasText: /^\/$/  }).click();
      await page.locator('button', { hasText: '2' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('4');
    });

    test('shows error on divide by zero', async ({ page }) => {
      await page.locator('button', { hasText: '5' }).click();
      await page.locator('button', { hasText: /^\/$/ }).click();
      await page.locator('button', { hasText: '0' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('Error');
    });

    test('clears with C', async ({ page }) => {
      await page.locator('button', { hasText: '9' }).click();
      await page.locator('button', { hasText: '9' }).click();
      await page.locator('button', { hasText: /^C$/ }).click();
      await expect(page.locator('#calc-display')).toHaveText('0');
    });

    test('handles decimal input', async ({ page }) => {
      await page.locator('button', { hasText: '3' }).click();
      await page.locator('button', { hasText: '.' }).click();
      await page.locator('button', { hasText: '5' }).click();
      await page.locator('button', { hasText: /^\+$/ }).click();
      await page.locator('button', { hasText: '1' }).click();
      await page.locator('button', { hasText: '.' }).click();
      await page.locator('button', { hasText: '5' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('5');
    });

    test('handles keyboard input', async ({ page }) => {
      await page.keyboard.press('7');
      await page.keyboard.press('+');
      await page.keyboard.press('3');
      await page.keyboard.press('Enter');
      await expect(page.locator('#calc-display')).toHaveText('10');
    });

    test('keyboard Escape clears', async ({ page }) => {
      await page.keyboard.press('5');
      await page.keyboard.press('5');
      await expect(page.locator('#calc-display')).toHaveText('55');
      await page.keyboard.press('Escape');
      await expect(page.locator('#calc-display')).toHaveText('0');
    });

    test('keyboard Backspace deletes last digit', async ({ page }) => {
      await page.keyboard.press('1');
      await page.keyboard.press('2');
      await page.keyboard.press('3');
      await expect(page.locator('#calc-display')).toHaveText('123');
      await page.keyboard.press('Backspace');
      await expect(page.locator('#calc-display')).toHaveText('12');
    });

    test('shows operator status', async ({ page }) => {
      await page.locator('button', { hasText: '8' }).click();
      await page.locator('button', { hasText: /^\+$/ }).click();
      await expect(page.locator('#calc-status')).toHaveText('8 +');
    });

    test('chains operations', async ({ page }) => {
      await page.locator('button', { hasText: '2' }).click();
      await page.locator('button', { hasText: /^\+$/ }).click();
      await page.locator('button', { hasText: '3' }).click();
      await page.locator('button', { hasText: /^\+$/ }).click();
      await expect(page.locator('#calc-display')).toHaveText('5');
      await page.locator('button', { hasText: '4' }).click();
      await page.locator('button', { hasText: '=' }).click();
      await expect(page.locator('#calc-display')).toHaveText('9');
    });
  });
}
