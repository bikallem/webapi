///|
/// Vibration API example demonstrating navigator.vibrate().
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("Vibration API")

  // Note
  let note : @webapi.HTMLDivElement = doc.create_element("div").into()
  note
  ..set_attribute("id", "note")
  ..set_attribute("style", "color: #666; font-style: italic; margin: 0.5em 0;")
  .set_text_content("Note: Vibration only works on supported mobile devices.")

  // Status
  let status_div : @webapi.HTMLDivElement = doc.create_element("div").into()
  status_div..set_attribute("id", "status").set_text_content("Ready")

  // Single pulse button
  let single_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  single_btn
  ..set_attribute("id", "single-btn")
  .set_text_content("Single Pulse (200ms)")
  single_btn.add_event_listener("click", fn(_event) {
    let result = @webapi.navigator.vibrate(200U)
    status_div.set_text_content(
      "Single pulse: " + (if result { "OK" } else { "not supported" }),
    )
  })

  // Pattern button (uses longer single pulse since Array[UInt] has wasm-gc limitations)
  let pattern_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  pattern_btn
  ..set_attribute("id", "pattern-btn")
  .set_text_content("Long Pulse (500ms)")
  pattern_btn.add_event_listener("click", fn(_event) {
    let result = @webapi.navigator.vibrate(500U)
    status_div.set_text_content(
      "Pattern: " + (if result { "OK" } else { "not supported" }),
    )
  })

  // Stop button
  let stop_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  stop_btn..set_attribute("id", "stop-btn").set_text_content("Stop")
  stop_btn.add_event_listener("click", fn(_event) {
    let result = @webapi.navigator.vibrate(0U)
    status_div.set_text_content(
      "Stop: " + (if result { "OK" } else { "not supported" }),
    )
  })

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, note, single_btn, pattern_btn, stop_btn, status_div,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
