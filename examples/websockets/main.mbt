///|
/// WebSocket Demo - uses generated WebSocket bindings to connect, send, and receive
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("WebSocket Demo")

  // Status display
  let status = doc.create_element("div")
  status
  ..set_attribute("id", "ws-status")
  ..set_attribute(
    "style", "font-family: monospace; font-size: 1.2em; margin: 0.5em 0; padding: 0.5em; background: #f5f5f5; border-radius: 4px;",
  )
  .set_text_content("Status: Disconnected")

  // Messages log
  let messages = doc.create_element("div")
  messages
  ..set_attribute("id", "messages")
  ..set_attribute(
    "style", "font-family: monospace; padding: 1em; background: #f9f9f9; margin: 1em 0; border-radius: 4px; min-height: 100px; white-space: pre-line; border: 1px solid #ddd;",
  )
  .set_text_content("Messages will appear here...")

  // Mutable WebSocket reference
  let ws : Ref[@webapi.WebSocket?] = { val: None }

  let update_status = fn(text : String) { status.set_text_content(text) }

  let log_message = fn(text : String) {
    let current = messages.text_content()
    if current == "Messages will appear here..." {
      messages.set_text_content(text)
    } else {
      messages.set_text_content(current + "\n" + text)
    }
  }

  // Connect button
  let connect_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  connect_btn
  ..set_attribute("id", "connect-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em 0.5em 0;",
  )
  .set_text_content("Connect")

  // Disconnect button
  let disconnect_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  disconnect_btn
  ..set_attribute("id", "disconnect-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em;",
  )
  .set_text_content("Disconnect")

  // Connect handler
  connect_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      match ws.val {
        Some(s) => if s.ready_state() < @webapi.WEB_SOCKET_CLOSING { return }
        _ => ()
      }
      update_status("Status: Connecting...")
      let socket = @webapi.WebSocket::new("wss://echo.websocket.org")
      ws.val = Some(socket)
      socket.set_onopen(
        @webapi.EventHandlerNonNull::new(fn(_e) {
          update_status(
            "Status: Connected (readyState=" +
            socket.ready_state().to_string() +
            ")",
          )
          log_message("Connected! Sending test message...")
          socket.send("Hello from MoonBit!")
          @webapi.JsValue::undefined()
        }),
      )
      socket.set_onmessage(
        @webapi.EventHandlerNonNull::new(fn(e) {
          let msg_event : @webapi.MessageEvent = e.into()
          let data : String = msg_event.data().into()
          log_message("Received: " + data)
          @webapi.JsValue::undefined()
        }),
      )
      socket.set_onclose(
        @webapi.EventHandlerNonNull::new(fn(e) {
          let close_event : @webapi.CloseEvent = e.into()
          update_status(
            "Status: Closed (code=" + close_event.code().to_string() + ")",
          )
          log_message("Connection closed")
          @webapi.JsValue::undefined()
        }),
      )
      socket.set_onerror(
        @webapi.EventHandlerNonNull::new(fn(_e) {
          update_status("Status: Error")
          log_message("Connection error")
          @webapi.JsValue::undefined()
        }),
      )
    }),
  )

  // Disconnect handler
  disconnect_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      match ws.val {
        Some(s) =>
          if s.ready_state() < @webapi.WEB_SOCKET_CLOSING {
            s.close()
            update_status("Status: Closing...")
          } else {
            log_message("No active connection")
          }
        _ => log_message("No active connection")
      }
    }),
  )

  // Build DOM
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, status, connect_btn, disconnect_btn, messages,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
