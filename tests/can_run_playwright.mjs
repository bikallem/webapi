import net from 'node:net';
import { chromium } from '@playwright/test';

async function canListenOnLoopback() {
  const server = net.createServer();
  try {
    await new Promise((resolve, reject) => {
      server.once('error', reject);
      server.listen(0, '127.0.0.1', resolve);
    });
    return true;
  } catch (error) {
    console.error(`Playwright probe: cannot listen on localhost (${error.code ?? error.message})`);
    return false;
  } finally {
    if (server.listening) {
      await new Promise((resolve) => server.close(() => resolve()));
    }
  }
}

async function canLaunchChromium() {
  let browser = null;
  try {
    browser = await chromium.launch();
    return true;
  } catch (error) {
    const message = error instanceof Error ? error.message.split('\n')[0] : String(error);
    console.error(`Playwright probe: cannot launch Chromium (${message})`);
    return false;
  } finally {
    await browser?.close().catch(() => {});
  }
}

let ok = await canListenOnLoopback();
if (ok) {
  ok = await canLaunchChromium();
}

process.exit(ok ? 0 : 1);
