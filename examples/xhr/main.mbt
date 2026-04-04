///|
/// XMLHttpRequest example demonstrating XHR lifecycle and readyState transitions.
fn main {
  let doc = @webapi.document()
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc
    .create_element("h1")
    .unsafe_into()
  heading.set_text_content("XMLHttpRequest")

  // URL input
  let url_input : @webapi.HTMLInputElement = doc
    .create_element("input")
    .unsafe_into()
  url_input
  ..set_attribute("id", "url-input")
  ..set_attribute("type", "text")
  ..set_attribute("style", "width: 100%; padding: 0.5em; margin: 0.5em 0;")
  .set_value("https://jsonplaceholder.typicode.com/todos/1")

  // Send button
  let send_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  send_btn..set_attribute("id", "send-btn").set_text_content("Send")

  // Status display
  let status_div : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  status_div..set_attribute("id", "status").set_text_content("Ready")

  // Body display
  let body_div : @webapi.HTMLPreElement = doc
    .create_element("pre")
    .unsafe_into()
  body_div
  ..set_attribute("id", "body")
  .set_attribute(
    "style", "background: #f5f5f5; padding: 1em; overflow-x: auto; max-height: 300px;",
  )

  // Log display
  let log_div : @webapi.HTMLDivElement = doc.create_element("div").unsafe_into()
  log_div
  ..set_attribute("id", "log")
  .set_attribute("style", "font-size: 0.85em; color: #666;")

  send_btn.add_event_listener("click", fn(_event) {
    let xhr = @webapi.XMLHttpRequest::new()
    log_div.set_text_content("")
    status_div.set_text_content("Sending...")
    body_div.set_text_content("")
    let url = url_input.value()
    xhr.set_onreadystatechange(fn(_ev) -> @webapi.JsValue {
      let state = xhr.ready_state()
      let state_name = if state == @webapi.XML_HTTP_REQUEST_UNSENT {
        "UNSENT"
      } else if state == @webapi.XML_HTTP_REQUEST_OPENED {
        "OPENED"
      } else if state == @webapi.XML_HTTP_REQUEST_HEADERS_RECEIVED {
        "HEADERS_RECEIVED"
      } else if state == @webapi.XML_HTTP_REQUEST_LOADING {
        "LOADING"
      } else {
        "DONE"
      }
      let current = log_div.text_content()
      log_div.set_text_content(current + "readyState: " + state_name + "\n")
      if state == @webapi.XML_HTTP_REQUEST_DONE {
        status_div.set_text_content(
          "Status: " + xhr.status().to_string() + " " + xhr.status_text(),
        )
        body_div.set_text_content(xhr.response_text())
      }
      @webapi.JsValue::undefined()
    })
    xhr.open("GET", url)
    xhr.send()
  })

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, url_input, send_btn, status_div, body_div, log_div,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
