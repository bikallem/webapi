fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Fetch API Demo")

  let url_input : @webapi.HTMLInputElement = doc.create_element("input").into()
  url_input
  ..set_attribute("id", "url-input")
  ..set_attribute("type", "text")
  ..set_attribute(
    "style", "width: 100%; padding: 0.5em; font-size: 1em; box-sizing: border-box; font-family: monospace;",
  )
  .set_value("https://jsonplaceholder.typicode.com/todos/1")

  let fetch_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  fetch_btn
  ..set_attribute("id", "fetch-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0;",
  )
  .set_text_content("Fetch")

  let status_el = doc.create_element("div")
  status_el
  ..set_attribute("id", "status")
  ..set_attribute(
    "style", "margin: 1em 0 0.5em; font-weight: bold; font-family: monospace;",
  )
  .set_text_content("Ready")

  let headers_el = doc.create_element("pre")
  headers_el
  ..set_attribute("id", "headers")
  .set_attribute(
    "style", "background: #f5f5f5; padding: 1em; margin: 0.5em 0; white-space: pre-wrap; min-height: 2em;",
  )

  let body_el = doc.create_element("pre")
  body_el
  ..set_attribute("id", "body")
  .set_attribute(
    "style", "background: #eef; padding: 1em; margin: 0.5em 0; white-space: pre-wrap; min-height: 2em;",
  )

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

  fetch_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let url = url_input.value()
      do_fetch(url)
    }),
  )
}

///|
fn do_fetch(url : String) -> Unit {
  let doc = @webapi.document
  let status_el = doc.get_element_by_id("status").unwrap()
  let headers_el = doc.get_element_by_id("headers").unwrap()
  let body_el = doc.get_element_by_id("body").unwrap()
  status_el.set_text_content("Fetching...")
  headers_el.set_text_content("")
  body_el.set_text_content("")

  @webapi.window
  .fetch(url)
  .then(fn(response : @webapi.Response) -> @webapi.JsUndefined {
    let status = response.status()
    let ok = response.ok()
    let status_text = if ok { "OK" } else { "Error" }
    status_el.set_text_content("Status: \{status} \{status_text}")
    let content_type = response.headers().get("content-type").unwrap_or("")
    headers_el.set_text_content("Content-Type: \{content_type}")
    body_el.set_text_content("Fetched URL: \{response.url()}")
    @webapi.JsUndefined::undefined()
  })
  .catch_(fn(_err) -> @webapi.JsUndefined {
    status_el.set_text_content("Error: fetch failed")
    headers_el.set_text_content("")
    body_el.set_text_content("")
    @webapi.JsUndefined::undefined()
  })
  |> ignore
}
