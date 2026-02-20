///|
/// Calculator example built with generated WebAPI bindings.
using @webapi {
  document,
  type HTMLDivElement,
  type HTMLButtonElement,
  type KeyboardEvent,
}

///|
/// Renders display and operator status from state.
fn render_ui(
  display : HTMLDivElement,
  status : HTMLDivElement,
  state : CalculatorState,
) -> Unit {
  if state.has_error {
    display.set_text_content("Error")
  } else {
    display.set_text_content(state.current_input)
  }

  if state.has_error || !state.has_accumulator || state.pending_operator == "" {
    status.set_text_content("")
  } else {
    status.set_text_content(
      format_number(state.accumulator) + " " + state.pending_operator,
    )
  }
}

///|
/// Creates one calculator key with style based on role.
fn make_button(label : String) -> HTMLButtonElement {
  let button : HTMLButtonElement = document.create_element("button").into()
  let style = if label == "=" {
    "flex: 1; min-height: 2.8em; font-size: 1.1em; border-radius: 8px; border: 1px solid #1d4ed8; background: #2563eb; color: #ffffff;"
  } else if label == "+" || label == "-" || label == "*" || label == "/" {
    "flex: 1; min-height: 2.8em; font-size: 1.1em; border-radius: 8px; border: 1px solid #d0d5dd; background: #f2f4f7;"
  } else if label == "C" {
    "flex: 1; min-height: 2.8em; font-size: 1.1em; border-radius: 8px; border: 1px solid #fda29b; background: #fef3f2;"
  } else {
    "flex: 1; min-height: 2.8em; font-size: 1.1em; border-radius: 8px; border: 1px solid #d0d5dd; background: #ffffff;"
  }
  button
  ..set_type_("button")
  ..set_attribute("style", style)
  .set_text_content(label)
  button
}

///|
/// Maps KeyboardEvent.key to calculator key string.
fn map_keyboard_key(key : String) -> String? {
  match key {
    "0"
    | "1"
    | "2"
    | "3"
    | "4"
    | "5"
    | "6"
    | "7"
    | "8"
    | "9"
    | "."
    | "+"
    | "-"
    | "*"
    | "/" => Some(key)
    "Enter" | "=" => Some("=")
    "Backspace" => Some("DEL")
    "Escape" => Some("C")
    "Delete" => Some("CE")
    _ => None
  }
}

///|
/// Entry point: build DOM and wire button handlers.
fn main {
  let app = document.get_element_by_id("app").unwrap()
  let mut state = clear_all_state()

  let container : HTMLDivElement = document.create_element("div").into()
  container.set_attribute(
    "style", "max-width: 420px; margin: 2em auto; padding: 1em; font-family: system-ui;",
  )

  let heading = document.create_element("h1")
  heading.set_text_content("Calculator")

  let subtitle = document.create_element("p")
  subtitle
  ..set_attribute("style", "margin-top: 0.25em; color: #475467;")
  .set_text_content("A simple calculator built with WebAPI bindings.")

  let status : HTMLDivElement = document.create_element("div").into()
  status
  ..set_attribute("id", "calc-status")
  .set_attribute(
    "style", "min-height: 1.2em; text-align: right; color: #667085; font-size: 0.9em; margin-bottom: 0.2em;",
  )

  let display : HTMLDivElement = document.create_element("div").into()
  display
  ..set_attribute("id", "calc-display")
  .set_attribute(
    "style", "padding: 0.6em 0.75em; border: 1px solid #d0d5dd; border-radius: 8px; background: #f8fafc; text-align: right; font-size: 1.8em; font-weight: 700; min-height: 1.4em; overflow-x: auto;",
  )
  display.set_text_content("0")

  let buttons : HTMLDivElement = document.create_element("div").into()
  buttons.set_attribute("style", "margin-top: 0.75em;")

  let rows : Array[Array[String]] = [
    ["C", "CE", "DEL", "/"],
    ["7", "8", "9", "*"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "+"],
    ["+/-", "0", ".", "="],
  ]

  for row in rows {
    let row_el : HTMLDivElement = document.create_element("div").into()
    row_el.set_attribute(
      "style", "display: flex; gap: 0.5em; margin-top: 0.5em;",
    )
    for label in row {
      let button = make_button(label)
      let key = label
      button.add_event_listener("click", fn(_event) {
        match process_key(state, key) {
          Some(new_state) => {
            state = new_state
            render_ui(display, status, state)
          }
          None => ()
        }
      })
      row_el.append_child(button) |> ignore
    }
    buttons.append_child(row_el) |> ignore
  }

  // Keyboard support
  document.add_event_listener("keydown", fn(event) {
    let kb_event : KeyboardEvent = event.into()
    match map_keyboard_key(kb_event.key()) {
      Some(calc_key) => {
        match process_key(state, calc_key) {
          Some(new_state) => {
            state = new_state
            render_ui(display, status, state)
          }
          None => ()
        }
        kb_event.prevent_default()
      }
      None => ()
    }
  })

  let children : Array[&@webapi.TNode] = [
    heading, subtitle, status, display, buttons,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  render_ui(display, status, state)
}
