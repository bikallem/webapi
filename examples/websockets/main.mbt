///|
/// WebSocket Demo - connect, send messages, show connection state
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("WebSocket Demo")

  // Status display
  let status = doc.create_element("div")
  status
  ..set_attribute("id", "ws-status")
  ..set_attribute("style", "font-family: monospace; font-size: 1.2em; margin: 0.5em 0; padding: 0.5em; background: #f5f5f5; border-radius: 4px;")
  .set_text_content("Status: Disconnected")

  // Connect button
  let connect_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  connect_btn
  ..set_attribute("id", "connect-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em 0.5em 0;")
  .set_text_content("Connect")

  // Disconnect button
  let disconnect_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  disconnect_btn
  ..set_attribute("id", "disconnect-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em;")
  .set_text_content("Disconnect")

  // Messages log
  let messages = doc.create_element("div")
  messages
  ..set_attribute("id", "messages")
  ..set_attribute("style", "font-family: monospace; padding: 1em; background: #f9f9f9; margin: 1em 0; border-radius: 4px; min-height: 100px; white-space: pre-line; border: 1px solid #ddd;")
  .set_text_content("Messages will appear here...")

  // Connect handler - try connecting to echo.websocket.org (or just show state changes)
  connect_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      ws_connect(status, messages)
    }),
  )

  disconnect_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      ws_disconnect(status, messages)
    }),
  )

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, status, connect_btn, disconnect_btn, messages]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn ws_connect(status_el : @webapi.Element, msg_el : @webapi.Element) =
  #| (statusEl, msgEl) => {
  #|   if (window._ws && window._ws.readyState < 2) { return; }
  #|   statusEl.textContent = 'Status: Connecting...';
  #|   try {
  #|     const ws = new WebSocket('wss://echo.websocket.org');
  #|     window._ws = ws;
  #|     ws.onopen = () => {
  #|       statusEl.textContent = 'Status: Connected (readyState=' + ws.readyState + ')';
  #|       msgEl.textContent = 'Connected! Sending test message...';
  #|       ws.send('Hello from MoonBit!');
  #|     };
  #|     ws.onmessage = (e) => {
  #|       msgEl.textContent += '\nReceived: ' + e.data;
  #|     };
  #|     ws.onclose = (e) => {
  #|       statusEl.textContent = 'Status: Closed (code=' + e.code + ')';
  #|       msgEl.textContent += '\nConnection closed';
  #|     };
  #|     ws.onerror = () => {
  #|       statusEl.textContent = 'Status: Error';
  #|       msgEl.textContent += '\nConnection error';
  #|     };
  #|   } catch(e) {
  #|     statusEl.textContent = 'Status: Failed to connect';
  #|     msgEl.textContent = 'Error: ' + e.message;
  #|   }
  #| }

///|
extern "js" fn ws_disconnect(status_el : @webapi.Element, msg_el : @webapi.Element) =
  #| (statusEl, msgEl) => {
  #|   if (window._ws && window._ws.readyState < 2) {
  #|     window._ws.close();
  #|     statusEl.textContent = 'Status: Closing...';
  #|   } else {
  #|     msgEl.textContent += '\nNo active connection';
  #|   }
  #| }
