///|
/// Fetch API example demonstrating JsPromise::then/catch_ with @webapi
/// Works on both JS and wasm-gc targets (no async/await required)
fn main {
  let doc = @webapi.document()

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Fetch API Demo")

  // URL input
  let url_input : @webapi.HTMLInputElement = doc.create_element("input").unsafe_into()
  url_input
  ..set_attribute("id", "url-input")
  ..set_attribute("type", "text")
  ..set_attribute(
    "style", "width: 100%; padding: 0.5em; font-size: 1em; box-sizing: border-box; font-family: monospace;",
  )
  .set_value("https://jsonplaceholder.typicode.com/todos/1")

  // Fetch button
  let fetch_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  fetch_btn
  ..set_attribute("id", "fetch-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0;",
  )
  .set_text_content("Fetch")

  // Status display
  let status_el = doc.create_element("div")
  status_el
  ..set_attribute("id", "status")
  ..set_attribute(
    "style", "margin: 1em 0 0.5em; font-weight: bold; font-family: monospace;",
  )
  .set_text_content("Ready")

  // Headers display
  let headers_el = doc.create_element("pre")
  headers_el
  ..set_attribute("id", "headers")
  .set_attribute(
    "style", "background: #f5f5f5; padding: 1em; margin: 0.5em 0; white-space: pre-wrap; min-height: 2em;",
  )

  // Body display
  let body_el = doc.create_element("pre")
  body_el
  ..set_attribute("id", "body")
  .set_attribute(
    "style", "background: #eef; padding: 1em; margin: 0.5em 0; white-space: pre-wrap; min-height: 2em;",
  )

  // Build DOM
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").unsafe_into()
  container.set_attribute(
    "style", "max-width: 600px; margin: 2em auto; font-family: system-ui;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, url_input, fetch_btn, status_el, headers_el, body_el,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  // Fetch button handler
  fetch_btn.add_event_listener("click", fn(_event) {
    let url = url_input.value()
    do_fetch(url)
  })
}

///|
fn do_fetch(url : String) -> Unit {
  let doc = @webapi.document()
  let status_el : @webapi.Element = doc.get_element_by_id("status")
  let headers_el : @webapi.Element = doc.get_element_by_id("headers")
  let body_el : @webapi.Element = doc.get_element_by_id("body")
  status_el.set_text_content("Fetching...")
  headers_el.set_text_content("")
  body_el.set_text_content("")
  @webapi.window()
  .fetch(url)
  .then(fn(response : @webapi.Response) {
    let status = response.status()
    let ok = response.ok()
    let status_text = if ok { "OK" } else { "Error" }
    status_el.set_text_content("Status: \{status} \{status_text}")
    let content_type = response.headers().get("content-type").unwrap_or("")
    headers_el.set_text_content("Content-Type: \{content_type}")
    response.text().then(fn(text : String) { body_el.set_text_content(text) })
    |> ignore
  })
  .catch_(fn(_err) {
    status_el.set_text_content("Error: fetch failed")
    headers_el.set_text_content("")
    body_el.set_text_content("")
  })
  |> ignore
}
