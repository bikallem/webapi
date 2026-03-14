///|
/// Simple counter web app with increment and decrement buttons
/// All DOM elements are created programmatically in MoonBit
fn main {
  // Create mutable counter state
  let mut count = 0

  // Create heading
  let heading : @webapi.HTMLHeadingElement = @webapi.document()
    .create_element("h1")
    .unsafe_into()
  heading.set_text_content("Counter")

  // Create count display
  let count_display : @webapi.HTMLDivElement = @webapi.document()
    .create_element("div")
    .unsafe_into()
  count_display
  ..set_attribute("id", "count-display")
  ..set_attribute("style", "font-size: 3em; margin: 0.5em 0;")
  .set_text_content("0")

  // Update display
  fn update_display() {
    count_display.set_text_content(count.to_string())
  }

  // Create decrement button
  let decrement_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .unsafe_into()
  decrement_btn
  ..set_text_content("−")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  .add_event_listener("click", fn(_event) {
    count = count - 1
    update_display()
  })

  // Create increment button
  let increment_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .unsafe_into()
  increment_btn
  ..set_text_content("+")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  .add_event_listener("click", fn(_event) {
    count = count + 1
    update_display()
  })

  // Create reset button
  let reset_btn : @webapi.HTMLButtonElement = @webapi.document()
    .create_element("button")
    .unsafe_into()
  reset_btn
  ..set_text_content("Reset")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  .add_event_listener("click", fn(_event) {
    count = 0
    update_display()
  })

  // Build the DOM tree  
  let app : @webapi.Element = @webapi.document().get_element_by_id("app")
  let container : @webapi.HTMLDivElement = @webapi.document()
    .create_element("div")
    .unsafe_into()
  container
  ..set_attribute("id", "counter-app")
  .set_attribute("style", "text-align: center; font-family: system-ui;")
  let children : Array[&@webapi.TNode] = [
    heading, count_display, decrement_btn, increment_btn, reset_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  let _ = app.append_child(container)
}
