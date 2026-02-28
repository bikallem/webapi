///|
/// Performance API example demonstrating hr-time and performance-timeline.
fn main {
  let doc = @webapi.document
  let app : @webapi.Element = doc.get_element_by_id("app")
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let perf = @webapi.window.performance()

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("Performance API")

  // Time origin
  let time_origin_div : @webapi.HTMLDivElement = doc
    .create_element("div")
    .into()
  time_origin_div
  ..set_attribute("id", "time-origin")
  .set_text_content("Time origin: " + perf.time_origin().to_string())

  // Current time
  let time_now_div : @webapi.HTMLDivElement = doc.create_element("div").into()
  time_now_div
  ..set_attribute("id", "time-now")
  .set_text_content("Now: " + perf.now().to_string() + " ms")

  // Timing button
  let timing_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  timing_btn
  ..set_attribute("id", "timing-btn")
  .set_text_content("Measure Computation")
  let timing_output : @webapi.HTMLDivElement = doc.create_element("div").into()
  timing_output.set_attribute("id", "timing-output")
  timing_btn.add_event_listener("click", fn(_event) {
    let start = perf.now()
    // Do some work
    let mut sum = 0.0
    for i = 0; i < 100000; i = i + 1 {
      sum = sum + i.to_double() * 0.001
    }
    let elapsed = perf.now() - start
    timing_output.set_text_content(
      "Elapsed: " + elapsed.to_string() + " ms (sum=" + sum.to_string() + ")",
    )
  })

  // Elapsed since origin
  let entries_list : @webapi.HTMLDivElement = doc.create_element("div").into()
  entries_list
  ..set_attribute("id", "entries-list")
  .set_text_content("Elapsed since origin: " + perf.now().to_string() + " ms")

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, time_origin_div, time_now_div, timing_btn, timing_output, entries_list,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
