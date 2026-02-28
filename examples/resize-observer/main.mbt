///|
/// Resize Observer Demo - observe element size changes
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Resize Observer Demo")

  let info = doc.create_element("p")
  info.set_text_content("Drag the corner of the textarea to resize it:")

  // Resizable textarea
  let textarea : @webapi.HTMLTextAreaElement = doc
    .create_element("textarea")
    .into()
  textarea
  ..set_attribute("id", "resizable")
  ..set_attribute(
    "style", "width: 300px; height: 150px; resize: both; overflow: auto; padding: 0.5em; font-size: 1em; display: block;",
  )
  .set_value("Resize me!")

  // Dimensions display
  let dimensions = doc.create_element("div")
  dimensions
  ..set_attribute("id", "dimensions")
  ..set_attribute(
    "style", "font-size: 1.2em; margin: 1em 0; font-family: monospace;",
  )
  .set_text_content("Dimensions: --")

  // Set up ResizeObserver
  let observer = @webapi.ResizeObserver::new(fn(entries, _observer) {
    for entry in entries {
      let rect = entry.content_rect()
      let w = rect.width().to_int()
      let h = rect.height().to_int()
      dimensions.set_text_content(
        "Dimensions: " + w.to_string() + " x " + h.to_string(),
      )
    }
  })
  observer.observe(textarea)

  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, info, textarea, dimensions]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
