///|
/// Fetch API example using generated DOM bindings and a JS fetch helper.
fn main {
  let doc = @webapi.document

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Fetch API Demo")

  // URL input
  let url_input : @webapi.HTMLInputElement = doc.create_element("input").into()
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
    .into()
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
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
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

  // Fetch button handler - reads URL from the input
  fetch_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let url = url_input.value()
      do_fetch(url, status_el, headers_el, body_el)
    }),
  )
}

///|
extern "js" fn do_fetch(
  url : String,
  status_el : @webapi.Element,
  headers_el : @webapi.Element,
  body_el : @webapi.Element,
) -> Unit =
  #| async (url, statusEl, headersEl, bodyEl) => {
  #|   statusEl.textContent = 'Fetching...';
  #|   headersEl.textContent = '';
  #|   bodyEl.textContent = '';
  #|   try {
  #|     const response = await fetch(url);
  #|     const statusText = response.ok ? 'OK' : 'Error';
  #|     statusEl.textContent = `Status: ${response.status} ${statusText}`;
  #|     const contentType = response.headers.get('content-type') || '';
  #|     headersEl.textContent = `Content-Type: ${contentType}`;
  #|     bodyEl.textContent = await response.text();
  #|   } catch (err) {
  #|     statusEl.textContent = `Error: ${err}`;
  #|     headersEl.textContent = '';
  #|     bodyEl.textContent = '';
  #|   }
  #| }
