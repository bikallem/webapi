///|
/// Simple counter web app with increment and decrement buttons
/// All DOM elements are created programmatically in MoonBit
fn main {
  // Create mutable counter state
  let mut count = 0

  // Create heading
  let heading : HTMLHeadElement = document.create_element("h1").into()
  heading.set_text_content("Counter")

  // Create count display
  let count_display : HTMLDivElement = document.create_element("div").into()
  count_display
  ..set_attribute("id", "count-display")
  ..set_attribute("style", "font-size: 3em; margin: 0.5em 0;")
  ..set_text_content("0")

  // Update display
  let update_display = fn() {
    count_display.set_text_content(count.to_string())
  }

  // Create decrement button
  let decrement_btn : HTMLButtonElement = document
    .create_element("button")
    .into()
  decrement_btn
  ..set_text_content("−")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  ..add_event_listener(
    "click",
    event_listener(fn(_event) {
      count = count - 1
      update_display()
    }),
  )

  // Create increment button
  let increment_btn = document.create_element("button")
  increment_btn
  ..set_text_content("+")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  ..add_event_listener(
    "click",
    event_listener(fn(_event) {
      count = count + 1
      update_display()
    }),
  )

  // Create reset button
  let reset_btn = document.create_element("button")
  reset_btn
  ..set_text_content("Reset")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0 0.25em;",
  )
  ..add_event_listener(
    "click",
    event_listener(fn(_event) {
      count = 0
      update_display()
    }),
  )

  // Build the DOM tree  
  let app = document.get_element_by_id("app").unwrap()
  let container : HTMLDivElement = document.create_element("div").into()
  container
  ..set_attribute("id", "counter-app")
  ..set_attribute("style", "text-align: center; font-family: system-ui;")
  let children : Array[&TNode] = [
    heading, count_display, decrement_btn, increment_btn, reset_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  let _ = app.append_child(container)

}
