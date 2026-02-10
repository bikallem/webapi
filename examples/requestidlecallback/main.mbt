///|
/// RequestIdleCallback Demo - schedules work during browser idle periods

///|
extern "js" fn request_idle_callback(callback : @webapi.Function) -> Int =
  "(cb) => window.requestIdleCallback((deadline) => cb(deadline))"

///|
extern "js" fn get_time_remaining(deadline : @webapi.JsValue) -> Double =
  "(d) => d.timeRemaining()"

///|
extern "js" fn get_did_timeout(deadline : @webapi.JsValue) -> Bool =
  "(d) => d.didTimeout"

///|
fn main {
  let doc = @webapi.document

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("RequestIdleCallback Demo")

  // Create status display
  let status_div : @webapi.HTMLDivElement = doc.create_element("div").into()
  status_div
  ..set_attribute("id", "idle-status")
  ..set_attribute(
    "style",
    "font-size: 1.5em; margin: 0.5em 0; font-family: monospace;",
  )
  .set_text_content("Ready")

  // Create time remaining display
  let time_div : @webapi.HTMLDivElement = doc.create_element("div").into()
  time_div
  ..set_attribute("id", "time-remaining")
  .set_attribute(
    "style", "margin: 0.5em 0; font-family: monospace; color: #555;",
  )

  // Create schedule button
  let schedule_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  schedule_btn
  ..set_attribute("id", "schedule-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; cursor: pointer;",
  )
  .set_text_content("Schedule Idle Callback")

  // Button click handler
  schedule_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      status_div.set_text_content("Scheduled...")
      time_div.set_text_content("")
      let callback = @webapi.Function::new(fn(deadline) {
        let remaining = get_time_remaining(deadline)
        let did_timeout = get_did_timeout(deadline)
        status_div.set_text_content("Callback fired!")
        time_div.set_text_content("timeRemaining: \{remaining}ms | didTimeout: \{did_timeout}")
        @webapi.JsValue::undefined()
      })
      request_idle_callback(callback) |> ignore
    }),
  )

  // Build DOM
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, status_div, time_div, schedule_btn,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
