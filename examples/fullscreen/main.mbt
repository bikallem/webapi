///|
/// Fullscreen API Demo - toggle fullscreen and show status
fn main {
  let doc = @webapi.document

  // Heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Fullscreen Demo")

  // Status showing fullscreenEnabled
  let status = doc.create_element("div")
  status
  ..set_attribute("id", "status")
  ..set_attribute("style", "margin: 1em 0; font-family: monospace;")
  .set_text_content("fullscreenEnabled: \{doc.fullscreen_enabled()}")

  // Fullscreen target - colored div
  let target : @webapi.HTMLDivElement = doc.create_element("div").into()
  target
  ..set_attribute("id", "fullscreen-target")
  .set_attribute(
    "style", "width: 300px; height: 200px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 8px; display: grid; place-items: center; color: white; font-size: 1.2em;",
  )
  target.set_text_content("Fullscreen Target")

  // Toggle button
  let toggle_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  toggle_btn
  ..set_attribute("id", "toggle-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em; margin: 1em 0;")
  .set_text_content("Toggle Fullscreen")

  toggle_btn.add_event_listener("click", fn(_event) {
    let fs_el = doc.fullscreen_element()
    if fs_el.is_null() {
      target.request_fullscreen() |> ignore
    } else {
      doc.exit_fullscreen() |> ignore
    }
  })

  // Build DOM
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, status, target, toggle_btn]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
