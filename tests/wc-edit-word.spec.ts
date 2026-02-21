import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`wc-edit-word (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`wc-edit-word/wc-edit-word.${target}.html`);
      await page.waitForSelector('#person-card');
    });

    test('renders person details card with slots', async ({ page }) => {
      const card = page.locator('#person-card');
      await expect(card).toContainText('Morgan');
      await expect(card).toContainText('Stanley');
      await expect(card).toContainText('36');
      await expect(card).toContainText('Accountant');
    });

    test('renders standalone edit-word', async ({ page }) => {
      const para = page.locator('#standalone');
      await expect(para).toContainText('Chris');
      await expect(para).toContainText('the man said');
    });

    test('edit-word switches to input on click', async ({ page }) => {
      const editWord = page.locator('#standalone edit-word').first();
      await editWord.click();
      const input = editWord.locator('input');
      await expect(input).toBeVisible();
      await expect(input).toHaveValue('Chris');
    });

    test('edit-word updates text on submit', async ({ page }) => {
      const editWord = page.locator('#standalone edit-word').first();
      await editWord.click();
      const input = editWord.locator('input');
      await input.fill('Alice');
      await input.press('Enter');
      const span = editWord.locator('span');
      await expect(span).toHaveText('Alice');
    });
  });
}
