///|
/// Streams example demonstrating ReadableStream creation, reader acquisition,
/// and chunk-by-chunk reading with promise chaining.

///|
fn read_chunk(
  reader : @webapi.ReadableStreamDefaultReader,
  output : @webapi.Element,
  status : @webapi.Element,
) -> Unit {
  let _ = reader.read().then(fn(result) {
    if read_result_done(result) {
      status.set_text_content("Stream complete")
    } else {
      let chunk = read_result_value(result)
      let prev = output.text_content()
      let text = if prev.length() > 0 { prev + "\n" + chunk } else { chunk }
      output.set_text_content(text)
      read_chunk(reader, output, status)
    }
    @webapi.JsValue::undefined()
  })
}

///|
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()

  // Container
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style",
    "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Streams")

  // Status display
  let status_el = doc.create_element("div")
  status_el.set_id("status")
  status_el.set_attribute("style", "margin: 0.5em 0; font-family: monospace;")
  status_el.set_text_content("Ready")

  // Output display
  let output_el = doc.create_element("pre")
  output_el.set_id("output")
  output_el.set_attribute(
    "style",
    "background: #f5f5f5; padding: 1em; margin: 0.5em 0; min-height: 2em; font-family: monospace;",
  )

  // Read Stream button
  let read_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  read_btn
  ..set_id("read-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;")
  .set_text_content("Read Stream")

  read_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      // Create a custom ReadableStream producing 4 string chunks
      let stream = create_counting_stream()
      status_el.set_text_content(
        "Reading... (locked: " + stream.locked().to_string() + ")",
      )
      output_el.set_text_content("")

      // Get a default reader (locks the stream)
      let reader : @webapi.ReadableStreamDefaultReader = stream
        .get_reader()
        .into()
      status_el.set_text_content(
        "Reading... (locked: " + stream.locked().to_string() + ")",
      )

      // Read all chunks
      read_chunk(reader, output_el, status_el)
    }),
  )

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, read_btn, status_el, output_el,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
