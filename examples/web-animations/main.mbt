///|
/// Web Animations example demonstrating Element.animate(), Animation controls
/// (play, pause, reverse, cancel), and animation state monitoring.

///|
fn make_keyframe(transform : String, bg : String) -> @webapi.JsValue {
  @webapi.TJsValue::to_js(
    @webapi.JsObject::new()
    .set("transform", @webapi.TJsValue::to_js(transform))
    .set("backgroundColor", @webapi.TJsValue::to_js(bg)),
  )
}

///|
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()

  // Container
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Web Animations")

  // Animated box
  let box = doc.create_element("div")
  box.set_id("box")
  box.set_attribute(
    "style", "width: 80px; height: 80px; background: #3b82f6; border-radius: 8px; margin: 1em 0;",
  )

  // State display
  let state_el = doc.create_element("div")
  state_el.set_id("state")
  state_el.set_attribute("style", "margin: 0.5em 0; font-family: monospace;")

  // Button style
  let btn_style = "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;"

  // Play button
  let play_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  play_btn
  ..set_id("play-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Play")

  // Pause button
  let pause_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  pause_btn
  ..set_id("pause-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Pause")

  // Reverse button
  let reverse_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  reverse_btn
  ..set_id("reverse-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Reverse")

  // Cancel button
  let cancel_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  cancel_btn
  ..set_id("cancel-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Cancel")

  // Build DOM first (element must be connected for animation to start)
  let children : Array[&@webapi.TNode] = [
    heading, box, state_el, play_btn, pause_btn, reverse_btn, cancel_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  // Create animation after box is in DOM
  let keyframes = @webapi.JsArray::from_array([
    make_keyframe("translateX(0px) rotate(0deg)", "#3b82f6"),
    make_keyframe("translateX(250px) rotate(180deg)", "#ef4444"),
    make_keyframe("translateX(0px) rotate(360deg)", "#3b82f6"),
  ])
  let options = @webapi.KeyframeAnimationOptions::new(
    duration=2000.0,
    iterations=@double.infinity,
  )
  let animation = box.animate(@webapi.TJsValue::to_js(keyframes), options~)

  // Set initial state
  state_el.set_text_content("State: " + animation.play_state().value())

  // Update state display
  let update_state = fn() {
    state_el.set_text_content("State: " + animation.play_state().value())
  }

  // Update state when animation finishes or is cancelled
  animation.add_event_listener(
    "finish",
    @webapi.EventListener::new(fn(_event) { update_state() }),
  )
  animation.add_event_listener(
    "cancel",
    @webapi.EventListener::new(fn(_event) { update_state() }),
  )

  // Wire up button handlers
  play_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      animation.play()
      update_state()
    }),
  )
  pause_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      animation.pause()
      update_state()
    }),
  )
  reverse_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      animation.reverse()
      update_state()
    }),
  )
  cancel_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      animation.cancel()
      update_state()
    }),
  )
}
