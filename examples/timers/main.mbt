///|
/// Timers example demonstrating setTimeout, setInterval, and clearInterval.
/// A counter increments every 500ms via setInterval. A stop button calls
/// clearInterval. A separate section uses setTimeout to show a delayed message.

///|
fn function_to_handler(f : @webapi.Function) -> @webapi.TimerHandler = "%identity"

///|
fn main {
  let doc = @webapi.document

  // Mutable state
  let mut interval_id : Int = 0
  let mut count = 0
  let mut running = false

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Timers Example")

  // --- Interval counter section ---
  let counter_label = doc.create_element("div")
  counter_label
  ..set_attribute("id", "counter")
  ..set_attribute(
    "style", "font-size: 2em; font-family: monospace; margin: 0.5em 0;",
  )
  .set_text_content("Counter: 0")

  let update_counter = fn() {
    count = count + 1
    counter_label.set_text_content("Counter: " + count.to_string())
  }

  // Start button
  let start_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  start_btn
  ..set_attribute("id", "start-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; margin: 0 0.25em; font-size: 1em;",
  )
  .set_text_content("Start")

  // Stop button
  let stop_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  stop_btn
  ..set_attribute("id", "stop-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; margin: 0 0.25em; font-size: 1em;",
  )
  .set_text_content("Stop")

  // Interval status
  let interval_status = doc.create_element("div")
  interval_status
  ..set_attribute("id", "interval-status")
  ..set_attribute("style", "margin: 0.5em 0; color: gray;")
  .set_text_content("Stopped")

  // Start handler
  start_btn.add_event_listener("click", fn(_event) {
    if not(running) {
      running = true
      interval_status.set_text_content("Running")
      let handler = function_to_handler(
        @webapi.Function::new(fn(_args) {
          update_counter()
          @webapi.JsValue::undefined()
        }),
      )
      interval_id = @webapi.window.set_interval(handler, timeout=500, [])
    }
  })

  // Stop handler
  stop_btn.add_event_listener("click", fn(_event) {
    if running {
      running = false
      @webapi.window.clear_interval(id=interval_id)
      interval_status.set_text_content("Stopped")
    }
  })

  // --- setTimeout section ---
  let timeout_heading = doc.create_element("h2")
  timeout_heading.set_text_content("Delayed Message")

  let delay_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  delay_btn
  ..set_attribute("id", "delay-btn")
  ..set_attribute("style", "padding: 0.5em 1em; font-size: 1em;")
  .set_text_content("Show after 1s")

  let delay_msg = doc.create_element("div")
  delay_msg
  ..set_attribute("id", "delay-msg")
  ..set_attribute("style", "margin: 0.5em 0; font-weight: bold; color: green;")
  .set_text_content("")

  delay_btn.add_event_listener("click", fn(_event) {
    delay_msg.set_text_content("Waiting...")
    let handler = function_to_handler(
      @webapi.Function::new(fn(_args) {
        delay_msg.set_text_content("Hello from setTimeout!")
        @webapi.JsValue::undefined()
      }),
    )
    @webapi.window.set_timeout(handler, timeout=1000, []) |> ignore
  })

  // Build DOM
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, counter_label, start_btn, stop_btn, interval_status, timeout_heading,
    delay_btn, delay_msg,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
