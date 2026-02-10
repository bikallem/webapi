import { WebSocketServer } from 'ws';

const port = Number(process.env.WS_ECHO_PORT || 8765);
const wss = new WebSocketServer({ port });

wss.on('connection', (ws) => {
  ws.on('message', (data) => {
    ws.send(data.toString());
  });
});

wss.on('listening', () => {
  console.log(`WebSocket echo server listening on ws://localhost:${port}`);
});
