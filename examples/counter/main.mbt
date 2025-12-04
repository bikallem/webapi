///|
/// Simple counter web app with increment and decrement buttons
fn main {
  // Create mutable counter state using Ref
  let mut count = 0
  let count_display : HTMLDivElement = document
    .get_element_by_id("count-display")
    .unwrap()
    .into()

  // Helper to update display
  let update_display = fn() {
    count_display.set_text_content(count.to_string())
  }

  // Increment button
  let increment_btn : HTMLButtonElement = document
    .get_element_by_id("increment")
    .unwrap()
    .into()
  increment_btn.add_event_listener(
    "click",
    EventListener::new(fn(_event) {
      count = count + 1
      update_display()
    }),
  )

  // Decrement button
  let decrement_btn : HTMLButtonElement = document
    .get_element_by_id("decrement")
    .unwrap()
    .into()
  decrement_btn.add_event_listener(
    "click",
    event_listener(fn(_event) {
      count = count - 1
      update_display()
    }),
  )

  // Reset button
  let reset_btn : HTMLButtonElement = document
    .get_element_by_id("reset")
    .unwrap()
    .into()
  reset_btn.add_event_listener(
    "click",
    event_listener(fn(_event) {
      count = 0
      update_display()
    }),
  )
}
