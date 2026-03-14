///|
/// Console API Demo
/// Demonstrates log, warn, error, info, debug, assert, group, count, time, and table.
/// Open the browser DevTools console to see the output.
using @webapi {
  type Console,
  type HTMLButtonElement,
  type HTMLDivElement,
  document,
  type Element,
}

///|
fn make_button(label : String, on_click : () -> Unit) -> HTMLButtonElement {
  let btn : HTMLButtonElement = document().create_element("button").unsafe_into()
  btn
  ..set_text_content(label)
  ..set_attribute(
    "style", "padding: 0.5em 1.2em; margin: 0.3em; font-size: 0.95em; cursor: pointer; background: #4a90d9; color: white; border: none; border-radius: 4px;",
  )
  .add_event_listener("click", fn(_event) { on_click() })
  btn
}

///|
fn main {
  let app : Element = document().get_element_by_id("app")
  let container : HTMLDivElement = document().create_element("div").unsafe_into()
  container.set_attribute(
    "style", "max-width: 700px; margin: 2em auto; padding: 1.5em; font-family: system-ui;",
  )

  // Title
  let title = document().create_element("h1")
  title
  ..set_text_content("Console API Demo")
  .set_attribute("style", "color: #2c3e50; margin-bottom: 0.2em;")
  container.append_child(title) |> ignore

  // Subtitle
  let subtitle = document().create_element("p")
  subtitle
  ..set_text_content(
    "Open DevTools (F12) to see console output, then click the buttons below.",
  )
  .set_attribute("style", "color: #666; margin-bottom: 1.5em;")
  container.append_child(subtitle) |> ignore

  // --- Logging levels ---
  let section1 = document().create_element("h2")
  section1
  ..set_text_content("Log Levels")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section1) |> ignore

  container.append_child(
    make_button("log", fn() { Console::log(["Hello from MoonBit!"]) }),
  )
  |> ignore
  container.append_child(
    make_button("info", fn() { Console::info(["Info message"]) }),
  )
  |> ignore
  container.append_child(
    make_button("warn", fn() { Console::warn(["Warning message"]) }),
  )
  |> ignore
  container.append_child(
    make_button("error", fn() { Console::error(["Error message"]) }),
  )
  |> ignore
  container.append_child(
    make_button("debug", fn() { Console::debug(["Debug message"]) }),
  )
  |> ignore

  // --- Assertions ---
  let section2 = document().create_element("h2")
  section2
  ..set_text_content("Assertions")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section2) |> ignore

  container.append_child(
    make_button("assert (pass)", fn() {
      Console::assert_(condition=true, ["This should NOT appear"])
    }),
  )
  |> ignore
  container.append_child(
    make_button("assert (fail)", fn() {
      Console::assert_(condition=false, ["Assertion failed: expected true"])
    }),
  )
  |> ignore

  // --- Grouping ---
  let section3 = document().create_element("h2")
  section3
  ..set_text_content("Grouping")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section3) |> ignore

  container.append_child(
    make_button("group", fn() {
      Console::group(["MoonBit Group"])
      Console::log(["Inside the group"])
      Console::warn(["Still inside"])
      Console::group_end()
    }),
  )
  |> ignore
  container.append_child(
    make_button("group (collapsed)", fn() {
      Console::group_collapsed(["Collapsed Group"])
      Console::log(["Hidden by default"])
      Console::group_end()
    }),
  )
  |> ignore

  // --- Counting ---
  let section4 = document().create_element("h2")
  section4
  ..set_text_content("Counting")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section4) |> ignore

  container.append_child(
    make_button("count", fn() { Console::count(label="clicks") }),
  )
  |> ignore
  container.append_child(
    make_button("count reset", fn() { Console::count_reset(label="clicks") }),
  )
  |> ignore

  // --- Timing ---
  let section5 = document().create_element("h2")
  section5
  ..set_text_content("Timing")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section5) |> ignore

  container.append_child(
    make_button("time start", fn() { Console::time(label="timer") }),
  )
  |> ignore
  container.append_child(
    make_button("time log", fn() {
      Console::time_log(label="timer", ["checkpoint"])
    }),
  )
  |> ignore
  container.append_child(
    make_button("time end", fn() { Console::time_end(label="timer") }),
  )
  |> ignore

  // --- Other ---
  let section6 = document().create_element("h2")
  section6
  ..set_text_content("Other")
  .set_attribute(
    "style", "font-size: 1.1em; margin: 1em 0 0.4em; border-bottom: 2px solid #4a90d9; padding-bottom: 0.2em; color: #2c3e50;",
  )
  container.append_child(section6) |> ignore

  container.append_child(
    make_button("trace", fn() { Console::trace(["Stack trace"]) }),
  )
  |> ignore
  container.append_child(make_button("clear", fn() { Console::clear() }))
  |> ignore

  // Mount
  app.append_child(container) |> ignore

  // Log on load so the user sees something immediately in DevTools
  Console::log(["Console API demo loaded"])
}
