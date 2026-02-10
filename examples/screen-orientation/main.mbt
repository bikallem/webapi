///|
/// Screen Orientation Demo - display current orientation type and angle
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Screen Orientation Demo")

  let type_div = doc.create_element("div")
  type_div
  ..set_attribute("id", "orientation-type")
  ..set_attribute("style", "font-size: 1.5em; margin: 0.5em 0; font-family: monospace;")
  .set_text_content("Type: " + get_orientation_type())

  let angle_div = doc.create_element("div")
  angle_div
  ..set_attribute("id", "orientation-angle")
  ..set_attribute("style", "font-size: 1.5em; margin: 0.5em 0; font-family: monospace;")
  .set_text_content("Angle: " + get_orientation_angle().to_string() + "\u00b0")

  let info = doc.create_element("p")
  info
  ..set_attribute("style", "color: #666; margin-top: 1em;")
  .set_text_content("Rotate your device to see changes.")

  // Listen for orientation change
  add_orientation_change_listener(fn() {
    type_div.set_text_content("Type: " + get_orientation_type())
    angle_div.set_text_content("Angle: " + get_orientation_angle().to_string() + "\u00b0")
  })

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, type_div, angle_div, info]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn get_orientation_type() -> String =
  #| () => screen.orientation.type

///|
extern "js" fn get_orientation_angle() -> Int =
  #| () => screen.orientation.angle

///|
extern "js" fn add_orientation_change_listener(callback : () -> Unit) =
  #| (cb) => screen.orientation.addEventListener('change', () => cb())
