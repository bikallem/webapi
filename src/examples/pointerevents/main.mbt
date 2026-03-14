///|
/// Pointer Events Demo - track pointer movement and display pointer info
fn main {
  let doc = @webapi.document()

  let heading = doc.create_element("h1")
  heading.set_text_content("Pointer Events Demo")

  // Pointer tracking area
  let pointer_area : @webapi.HTMLDivElement = doc.create_element("div").into()
  pointer_area
  ..set_attribute("id", "pointer-area")
  .set_attribute(
    "style", "width: 100%; height: 250px; background: linear-gradient(135deg, #e0e0ff 0%, #ffe0e0 100%); border-radius: 8px; display: grid; place-items: center; cursor: crosshair; touch-action: none;",
  )
  pointer_area.set_text_content("Move pointer here")

  // Info display
  let pointer_info = doc.create_element("div")
  pointer_info
  ..set_attribute("id", "pointer-info")
  ..set_attribute(
    "style", "font-family: monospace; padding: 1em; background: #f5f5f5; margin: 1em 0; border-radius: 4px; white-space: pre-line;",
  )
  .set_text_content("Pointer info: move pointer over the area above")

  // Listen for pointermove
  pointer_area.add_event_listener("pointermove", fn(event) {
    let pe : @webapi.PointerEvent = event.into()
    let id = pe.pointer_id()
    let ptr_type = pe.pointer_type()
    let x = pe.client_x()
    let y = pe.client_y()
    let pressure = pe.pressure()
    pointer_info.set_text_content(
      "Pointer ID: " +
      id.to_string() +
      "\nType: " +
      ptr_type +
      "\nPosition: (" +
      x.to_string() +
      ", " +
      y.to_string() +
      ")" +
      "\nPressure: " +
      pressure.to_string(),
    )
  })

  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, pointer_area, pointer_info]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
