///|
/// Storage Manager Demo - display storage estimate (usage/quota)
/// Works on both JS and wasm-gc targets (no async/await required)
fn main {
  let doc = @webapi.document()

  let heading = doc.create_element("h1")
  heading.set_text_content("Storage Manager Demo")

  let status_div = doc.create_element("div")
  status_div
  ..set_attribute("id", "status")
  ..set_attribute(
    "style", "font-size: 1.2em; margin: 0.5em 0; font-family: monospace; padding: 0.5em; background: #f5f5f5; border-radius: 4px;",
  )
  .set_text_content("Click the button to get a storage estimate.")

  let estimate_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  estimate_btn
  ..set_attribute("id", "estimate-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 1em 0;")
  .set_text_content("Get Estimate")

  estimate_btn.add_event_listener("click", fn(_event) { do_estimate() })

  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, status_div, estimate_btn]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
fn do_estimate() -> Unit {
  let doc = @webapi.document()
  let status_div : @webapi.Element = doc.get_element_by_id("status")
  status_div.set_text_content("Estimating...")
  // Use the generated StorageManager.estimate() binding
  @webapi.navigator()
  .storage()
  .estimate()
  .then(fn(estimate : @webapi.StorageEstimate) {
    // StorageEstimate is a dictionary type; log the full object to the console
    @webapi.Console::log([estimate])
    status_div.set_text_content(
      "Storage estimate retrieved -- open the browser console to see usage/quota details.",
    )
  })
  .catch_(fn(_err) {
    status_div.set_text_content("Error: could not retrieve storage estimate.")
  })
  |> ignore
}
