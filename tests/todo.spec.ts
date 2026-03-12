import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`todo (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`todo/todo.${target}.html`);
      await page.waitForSelector('wc-todo');
      // Clear any persisted todos
      await page.locator('wc-todo').locator('[data-ref=clear]').click();
    });

    const wc = 'wc-todo';

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator(wc).locator('h1')).toHaveText('Todo App');
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 0');
      await expect(page.locator(wc).locator('[data-ref=empty]')).toBeVisible();
    });

    test('adds a todo item', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('Buy groceries');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(1);
      await expect(page.locator(wc).locator('li')).toContainText('Buy groceries');
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 1');
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Completed: 0');
    });

    test('clears input after adding', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('Test task');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('[data-ref=input]')).toHaveValue('');
    });

    test('does not add empty todo', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(0);
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 0');
    });

    test('marks todo as done', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('Task one');
      await page.locator(wc).locator('[data-ref=add]').click();
      await page.locator(wc).locator('li input[type="checkbox"]').click();
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Completed: 1');
      await expect(page.locator(wc).locator('li')).toHaveClass(/done/);
    });

    test('deletes a todo item', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('To delete');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(1);
      await page.locator(wc).locator('li button', { hasText: 'Delete' }).click();
      await expect(page.locator(wc).locator('li')).toHaveCount(0);
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 0');
    });

    test('clears all todos', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('First');
      await page.locator(wc).locator('[data-ref=add]').click();
      await page.locator(wc).locator('[data-ref=input]').fill('Second');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(2);
      await page.locator(wc).locator('[data-ref=clear]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(0);
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 0');
    });

    test('persists todos across page reload', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('Persistent task');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('li')).toHaveCount(1);
      await page.reload();
      await page.waitForSelector('wc-todo');
      await expect(page.locator(wc).locator('li')).toHaveCount(1);
      await expect(page.locator(wc).locator('li')).toContainText('Persistent task');
      // Clean up
      await page.locator(wc).locator('[data-ref=clear]').click();
    });

    test('keeps multiple component instances isolated', async ({ page }) => {
      await page.evaluate(() => {
        const second = document.createElement('wc-todo');
        second.id = 'secondary';
        document.body.appendChild(second);
      });
      await expect(page.locator(wc)).toHaveCount(2);

      const first = page.locator(wc).nth(0);
      const second = page.locator(wc).nth(1);

      await expect(first.locator('[data-ref=status]')).toContainText('Total: 0');
      await expect(second.locator('[data-ref=status]')).toContainText('Total: 0');

      await first.locator('[data-ref=input]').fill('First task');
      await first.locator('[data-ref=add]').click();
      await expect(first.locator('li')).toHaveCount(1);
      await expect(first.locator('[data-ref=status]')).toContainText('Total: 1');
      await expect(second.locator('li')).toHaveCount(0);
      await expect(second.locator('[data-ref=status]')).toContainText('Total: 0');

      await second.locator('[data-ref=input]').fill('Second task');
      await second.locator('[data-ref=add]').click();
      await expect(first.locator('li')).toHaveCount(1);
      await expect(first.locator('li')).toContainText('First task');
      await expect(first.locator('[data-ref=status]')).toContainText('Total: 1');
      await expect(second.locator('li')).toHaveCount(1);
      await expect(second.locator('li')).toContainText('Second task');
      await expect(second.locator('[data-ref=status]')).toContainText('Total: 1');

      await first.locator('[data-ref=clear]').click();
      await expect(first.locator('li')).toHaveCount(0);
      await expect(first.locator('[data-ref=status]')).toContainText('Total: 0');
      await expect(second.locator('li')).toHaveCount(1);
      await expect(second.locator('li')).toContainText('Second task');
      await expect(second.locator('[data-ref=status]')).toContainText('Total: 1');
    });

    test('updates status with multiple items', async ({ page }) => {
      await page.locator(wc).locator('[data-ref=input]').fill('Task A');
      await page.locator(wc).locator('[data-ref=add]').click();
      await page.locator(wc).locator('[data-ref=input]').fill('Task B');
      await page.locator(wc).locator('[data-ref=add]').click();
      await page.locator(wc).locator('[data-ref=input]').fill('Task C');
      await page.locator(wc).locator('[data-ref=add]').click();
      await page.locator(wc).locator('li input[type="checkbox"]').first().click();
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Total: 3');
      await expect(page.locator(wc).locator('[data-ref=status]')).toContainText('Completed: 1');
    });

    test('hides empty state when items exist', async ({ page }) => {
      await expect(page.locator(wc).locator('[data-ref=empty]')).toBeVisible();
      await page.locator(wc).locator('[data-ref=input]').fill('Something');
      await page.locator(wc).locator('[data-ref=add]').click();
      await expect(page.locator(wc).locator('[data-ref=empty]')).not.toBeVisible();
    });
  });
}
