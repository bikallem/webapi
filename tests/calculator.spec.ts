import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`calculator (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`calculator/calculator.${target}.html`);
      await page.waitForSelector('wc-calculator');
    });

    const calc = 'wc-calculator';

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('0');
      await expect(page.locator(calc).locator('[data-ref=status]')).toHaveText('');
    });

    test('enters digits', async ({ page }) => {
      await page.locator(calc).locator('[data-key="1"]').click();
      await page.locator(calc).locator('[data-key="2"]').click();
      await page.locator(calc).locator('[data-key="3"]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('123');
    });

    test('adds two numbers', async ({ page }) => {
      await page.locator(calc).locator('[data-key="5"]').click();
      await page.locator(calc).locator('[data-key="+"]').click();
      await page.locator(calc).locator('[data-key="3"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('8');
    });

    test('subtracts two numbers', async ({ page }) => {
      await page.locator(calc).locator('[data-key="9"]').click();
      await page.locator(calc).locator('[data-key="-"]').click();
      await page.locator(calc).locator('[data-key="4"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('5');
    });

    test('multiplies two numbers', async ({ page }) => {
      await page.locator(calc).locator('[data-key="6"]').click();
      await page.locator(calc).locator('[data-key="*"]').click();
      await page.locator(calc).locator('[data-key="7"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('42');
    });

    test('divides two numbers', async ({ page }) => {
      await page.locator(calc).locator('[data-key="8"]').click();
      await page.locator(calc).locator('[data-key="/"]').click();
      await page.locator(calc).locator('[data-key="2"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('4');
    });

    test('shows error on divide by zero', async ({ page }) => {
      await page.locator(calc).locator('[data-key="5"]').click();
      await page.locator(calc).locator('[data-key="/"]').click();
      await page.locator(calc).locator('[data-key="0"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('Error');
    });

    test('clears with C', async ({ page }) => {
      await page.locator(calc).locator('[data-key="9"]').click();
      await page.locator(calc).locator('[data-key="9"]').click();
      await page.locator(calc).locator('[data-key="C"]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('0');
    });

    test('handles decimal input', async ({ page }) => {
      await page.locator(calc).locator('[data-key="3"]').click();
      await page.locator(calc).locator('[data-key="."]').click();
      await page.locator(calc).locator('[data-key="5"]').click();
      await page.locator(calc).locator('[data-key="+"]').click();
      await page.locator(calc).locator('[data-key="1"]').click();
      await page.locator(calc).locator('[data-key="."]').click();
      await page.locator(calc).locator('[data-key="5"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('5');
    });

    test('handles keyboard input', async ({ page }) => {
      await page.keyboard.press('7');
      await page.keyboard.press('+');
      await page.keyboard.press('3');
      await page.keyboard.press('Enter');
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('10');
    });

    test('keyboard Escape clears', async ({ page }) => {
      await page.keyboard.press('5');
      await page.keyboard.press('5');
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('55');
      await page.keyboard.press('Escape');
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('0');
    });

    test('keyboard Backspace deletes last digit', async ({ page }) => {
      await page.keyboard.press('1');
      await page.keyboard.press('2');
      await page.keyboard.press('3');
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('123');
      await page.keyboard.press('Backspace');
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('12');
    });

    test('shows operator status', async ({ page }) => {
      await page.locator(calc).locator('[data-key="8"]').click();
      await page.locator(calc).locator('[data-key="+"]').click();
      await expect(page.locator(calc).locator('[data-ref=status]')).toHaveText('8 +');
    });

    test('chains operations', async ({ page }) => {
      await page.locator(calc).locator('[data-key="2"]').click();
      await page.locator(calc).locator('[data-key="+"]').click();
      await page.locator(calc).locator('[data-key="3"]').click();
      await page.locator(calc).locator('[data-key="+"]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('5');
      await page.locator(calc).locator('[data-key="4"]').click();
      await page.locator(calc).locator('[data-key="="]').click();
      await expect(page.locator(calc).locator('[data-ref=display]')).toHaveText('9');
    });
  });
}
