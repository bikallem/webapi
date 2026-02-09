///|
/// Events Demo - addEventListener, event bubbling, once-click pattern
/// All DOM elements are created programmatically in MoonBit
fn main {
  // Get app container
  let app = @webapi.document.get_element_by_id("app").unwrap()

  // Create a container div
  let container : @webapi.HTMLDivElement = @webapi.document
    .create_element("div")
    .into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Create heading
  let heading = @webapi.document.create_element("h1")
  heading.set_text_content("Events Demo")

  // Create log area
  let log_div : @webapi.HTMLDivElement = @webapi.document
    .create_element("div")
    .into()
  log_div
  ..set_attribute("id", "log")
  ..set_attribute(
    "style", "border: 1px solid #ccc; padding: 1em; min-height: 100px; margin: 1em 0; white-space: pre-line; background: #f9f9f9; font-family: monospace;",
  )
  .set_text_content("Event log:")

  // Create nested div structure for bubbling demo
  let outer : @webapi.HTMLDivElement = @webapi.document
    .create_element("div")
    .into()
  outer
  ..set_attribute("id", "outer")
  .set_attribute(
    "style", "border: 2px solid #333; padding: 2em; margin: 1em 0; background: #e0e0ff; cursor: pointer;",
  )

  let inner : @webapi.HTMLDivElement = @webapi.document
    .create_element("div")
    .into()
  inner
  ..set_attribute("id", "inner")
  .set_attribute(
    "style", "border: 2px solid #666; padding: 1.5em; background: #ffe0e0; cursor: pointer; text-align: center;",
  )
  inner.set_text_content("Inner (click me)")

  // Add label to outer
  let outer_label = @webapi.document.create_element("div")
  outer_label
  ..set_attribute("style", "margin-bottom: 0.5em; font-weight: bold;")
  .set_text_content("Outer")

  // Add click listeners to demonstrate bubbling
  outer.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let current = log_div.text_content()
      log_div.set_text_content(current + "\nClicked: outer")
    }),
  )

  inner.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let current = log_div.text_content()
      log_div.set_text_content(current + "\nClicked: inner")
    }),
  )

  // Append inner to outer
  outer.append_child(outer_label) |> ignore
  outer.append_child(inner) |> ignore

  // Create "Log Custom" button - demonstrates programmatic event-like patterns
  let custom_btn : @webapi.HTMLButtonElement = @webapi.document
    .create_element("button")
    .into()
  custom_btn
  ..set_attribute("id", "custom-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em; cursor: pointer;",
  )
  .set_text_content("Log Custom")

  custom_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let current = log_div.text_content()
      log_div.set_text_content(current + "\nCustom: hello")
    }),
  )

  // Create "Click Once" button - demonstrates once-fire pattern
  let once_btn : @webapi.HTMLButtonElement = @webapi.document
    .create_element("button")
    .into()
  once_btn
  ..set_attribute("id", "once-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em; cursor: pointer;",
  )
  .set_text_content("Click Once")

  let mut once_fired = 0
  once_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      if once_fired == 0 {
        once_fired = 1
        let current = log_div.text_content()
        log_div.set_text_content(current + "\nOnce clicked")
      }
    }),
  )

  // Build the DOM tree
  let children : Array[&@webapi.TNode] = [
    heading, outer, custom_btn, once_btn, log_div,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
