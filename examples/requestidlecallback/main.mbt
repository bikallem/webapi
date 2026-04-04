///|
/// RequestIdleCallback Demo - schedules work during browser idle periods
fn main {
  let doc = @webapi.document()

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("RequestIdleCallback Demo")

  // Create status display
  let status_div : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  status_div
  ..set_attribute("id", "idle-status")
  ..set_attribute(
    "style", "font-size: 1.5em; margin: 0.5em 0; font-family: monospace;",
  )
  .set_text_content("Ready")

  // Create time remaining display
  let time_div : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
  time_div
  ..set_attribute("id", "time-remaining")
  .set_attribute(
    "style", "margin: 0.5em 0; font-family: monospace; color: #555;",
  )

  // Create schedule button
  let schedule_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .unsafe_into()
  schedule_btn
  ..set_attribute("id", "schedule-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; cursor: pointer;",
  )
  .set_text_content("Schedule Idle Callback")

  // Button click handler
  schedule_btn.add_event_listener("click", fn(_event) {
    status_div.set_text_content("Scheduled...")
    time_div.set_text_content("")
    @webapi.window().request_idle_callback(fn(deadline) {
      let remaining = deadline.time_remaining()
      let did_timeout = deadline.did_timeout()
      status_div.set_text_content("Callback fired!")
      time_div.set_text_content(
        "timeRemaining: \{remaining}ms | didTimeout: \{did_timeout}",
      )
    })
    |> ignore
  })

  // Build DOM
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc
    .create_element("div")
    .unsafe_into()
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
