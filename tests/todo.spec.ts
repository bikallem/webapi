import { test, expect } from '@playwright/test';

const TARGETS = ['js', 'wasm'] as const;

for (const target of TARGETS) {
  test.describe(`todo (${target})`, () => {
    test.beforeEach(async ({ page }) => {
      await page.goto(`todo/todo.${target}.html`);
      await page.waitForSelector('#todo-list');
      // Clear any persisted todos
      await page.locator('button', { hasText: 'Clear All' }).click();
    });

    test('renders initial UI', async ({ page }) => {
      await expect(page.locator('h1')).toHaveText('Todo App');
      await expect(page.locator('#todo-status')).toContainText('Total: 0');
      await expect(page.locator('#todo-empty')).toBeVisible();
    });

    test('adds a todo item', async ({ page }) => {
      await page.locator('input[type="text"]').fill('Buy groceries');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(1);
      await expect(page.locator('#todo-list li')).toContainText('Buy groceries');
      await expect(page.locator('#todo-status')).toContainText('Total: 1');
      await expect(page.locator('#todo-status')).toContainText('Completed: 0');
    });

    test('clears input after adding', async ({ page }) => {
      await page.locator('input[type="text"]').fill('Test task');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('input[type="text"]')).toHaveValue('');
    });

    test('does not add empty todo', async ({ page }) => {
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(0);
      await expect(page.locator('#todo-status')).toContainText('Total: 0');
    });

    test('marks todo as done', async ({ page }) => {
      await page.locator('input[type="text"]').fill('Task one');
      await page.locator('button', { hasText: 'Add' }).click();
      await page.locator('#todo-list input[type="checkbox"]').click();
      await expect(page.locator('#todo-status')).toContainText('Completed: 1');
      await expect(page.locator('#todo-list li')).toHaveClass(/done/);
    });

    test('deletes a todo item', async ({ page }) => {
      await page.locator('input[type="text"]').fill('To delete');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(1);
      await page.locator('#todo-list button', { hasText: 'Delete' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(0);
      await expect(page.locator('#todo-status')).toContainText('Total: 0');
    });

    test('clears all todos', async ({ page }) => {
      await page.locator('input[type="text"]').fill('First');
      await page.locator('button', { hasText: 'Add' }).click();
      await page.locator('input[type="text"]').fill('Second');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(2);
      await page.locator('button', { hasText: 'Clear All' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(0);
      await expect(page.locator('#todo-status')).toContainText('Total: 0');
    });

    test('persists todos across page reload', async ({ page }) => {
      await page.locator('input[type="text"]').fill('Persistent task');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-list li')).toHaveCount(1);
      await page.reload();
      await page.waitForSelector('#todo-list');
      await expect(page.locator('#todo-list li')).toHaveCount(1);
      await expect(page.locator('#todo-list li')).toContainText('Persistent task');
      // Clean up
      await page.locator('button', { hasText: 'Clear All' }).click();
    });

    test('updates status with multiple items', async ({ page }) => {
      await page.locator('input[type="text"]').fill('Task A');
      await page.locator('button', { hasText: 'Add' }).click();
      await page.locator('input[type="text"]').fill('Task B');
      await page.locator('button', { hasText: 'Add' }).click();
      await page.locator('input[type="text"]').fill('Task C');
      await page.locator('button', { hasText: 'Add' }).click();
      await page.locator('#todo-list input[type="checkbox"]').first().click();
      await expect(page.locator('#todo-status')).toContainText('Total: 3');
      await expect(page.locator('#todo-status')).toContainText('Completed: 1');
    });

    test('hides empty state when items exist', async ({ page }) => {
      await expect(page.locator('#todo-empty')).toBeVisible();
      await page.locator('input[type="text"]').fill('Something');
      await page.locator('button', { hasText: 'Add' }).click();
      await expect(page.locator('#todo-empty')).not.toBeVisible();
    });
  });
}
