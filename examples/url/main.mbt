///|
/// URL and URLSearchParams API Demo
/// Demonstrates parsing URLs, reading components, and manipulating search parameters
using @webapi {
  document,
  type URL,
  type HTMLButtonElement,
  type HTMLDivElement,
  type Element,
}

///|
/// Create a labeled display row: a span with the label and a div for the value.
/// Returns (row, value_div) so the caller can set text content directly.
fn create_row(label : String, id : String) -> (HTMLDivElement, HTMLDivElement) {
  let row : HTMLDivElement = document.create_element("div").into()
  row.set_attribute(
    "style", "display: flex; align-items: baseline; margin: 0.3em 0; font-family: monospace;",
  )
  let lbl = document.create_element("span")
  lbl
  ..set_text_content(label)
  .set_attribute(
    "style", "font-weight: bold; min-width: 140px; color: #555; font-size: 0.9em;",
  )
  let value : HTMLDivElement = document.create_element("div").into()
  value
  ..set_attribute("id", id)
  .set_attribute(
    "style", "background: #f4f4f4; padding: 0.25em 0.5em; border-radius: 4px; word-break: break-all;",
  )
  row.append_child(lbl) |> ignore
  row.append_child(value) |> ignore
  (row, value)
}

///|
/// Create a section heading
fn create_section_heading(text : String) -> HTMLDivElement {
  let heading : HTMLDivElement = document.create_element("div").into()
  heading
  ..set_text_content(text)
  .set_attribute(
    "style", "font-size: 1.2em; font-weight: bold; margin: 1em 0 0.5em 0; padding-bottom: 0.3em; border-bottom: 2px solid #4a90d9; color: #2c3e50; font-family: system-ui;",
  )
  heading
}

///|
fn main {
  // Parse the URL
  let url = URL::new(
    "https://user:pass@example.com:8080/path/to/page?name=moonbit&version=1#section",
  )

  // Build app container
  let app : Element = document.get_element_by_id("app")
  let container : HTMLDivElement = document.create_element("div").into()
  container.set_attribute(
    "style", "max-width: 700px; margin: 2em auto; padding: 1.5em; font-family: system-ui;",
  )

  // Title
  let title = document.create_element("h1")
  title
  ..set_text_content("URL API Demo")
  .set_attribute("style", "color: #2c3e50; margin-bottom: 0.2em;")
  container.append_child(title) |> ignore

  // Show the parsed URL
  let url_display = document.create_element("div")
  url_display
  ..set_text_content(url.href())
  .set_attribute(
    "style", "background: #e8f4fd; padding: 0.75em; border-radius: 6px; font-family: monospace; font-size: 0.85em; word-break: break-all; margin-bottom: 1em;",
  )
  container.append_child(url_display) |> ignore

  // Section 1: URL Components
  container.append_child(create_section_heading("URL Components")) |> ignore

  // Create rows and fill values directly
  let (row, val) = create_row("protocol:", "protocol")
  val.set_text_content(url.protocol())
  container.append_child(row) |> ignore

  let (row, val) = create_row("hostname:", "hostname")
  val.set_text_content(url.hostname())
  container.append_child(row) |> ignore

  let (row, val) = create_row("port:", "port")
  val.set_text_content(url.port())
  container.append_child(row) |> ignore

  let (row, val) = create_row("pathname:", "pathname")
  val.set_text_content(url.pathname())
  container.append_child(row) |> ignore

  let (row, val) = create_row("search:", "search")
  val.set_text_content(url.search())
  container.append_child(row) |> ignore

  let (row, val) = create_row("hash:", "hash")
  val.set_text_content(url.hash())
  container.append_child(row) |> ignore

  let (row, val) = create_row("href:", "href")
  val.set_text_content(url.href())
  container.append_child(row) |> ignore

  // Section 2: URLSearchParams
  container.append_child(create_section_heading("URLSearchParams")) |> ignore

  let params = url.search_params()

  let (row, val) = create_row("name:", "param-name")
  let name_val = params.get("name")
  val.set_text_content(name_val.unwrap())
  container.append_child(row) |> ignore

  let (row, val) = create_row("version:", "param-version")
  let version_val = params.get("version")
  val.set_text_content(version_val.unwrap())
  container.append_child(row) |> ignore

  // Section 3: Add Param button
  container.append_child(create_section_heading("Modify Search Params"))
  |> ignore

  let params_display : HTMLDivElement = document.create_element("div").into()
  params_display
  ..set_attribute("id", "params-display")
  ..set_text_content(url.search())
  .set_attribute(
    "style", "background: #f4f4f4; padding: 0.5em; border-radius: 4px; font-family: monospace; margin-bottom: 0.75em; word-break: break-all;",
  )
  container.append_child(params_display) |> ignore

  let add_btn : HTMLButtonElement = document.create_element("button").into()
  add_btn
  ..set_attribute("id", "add-param-btn")
  ..set_text_content("Add Param")
  ..set_attribute(
    "style", "padding: 0.5em 1.2em; font-size: 1em; cursor: pointer; background: #4a90d9; color: white; border: none; border-radius: 4px;",
  )
  .add_event_listener("click", fn(_event) {
    params.append("added", "true")
    // Reflect the updated search string via the URL's search property
    params_display.set_text_content(url.search())
  })
  container.append_child(add_btn) |> ignore

  // Section 4: Construct URL
  container.append_child(create_section_heading("Construct URL")) |> ignore

  let constructed = URL::new("https://constructed.example.com/test")
  let constructed_params = constructed.search_params()
  constructed_params.set("key", "value")

  let constructed_display : HTMLDivElement = document
    .create_element("div")
    .into()
  constructed_display
  ..set_attribute("id", "constructed-url")
  ..set_text_content(constructed.href())
  .set_attribute(
    "style", "background: #f4f4f4; padding: 0.5em; border-radius: 4px; font-family: monospace; word-break: break-all;",
  )
  container.append_child(constructed_display) |> ignore

  // Mount to DOM
  app.append_child(container) |> ignore
}
