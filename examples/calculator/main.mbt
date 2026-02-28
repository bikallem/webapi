///|
/// Calculator web component: <wc-calculator> custom element with Shadow DOM.
using @webapi {
  document,
  type HTMLDivElement,
  type HTMLTemplateElement,
  type KeyboardEvent,
  type Element,
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
fn wc_calculator(host : @webapi.HTMLElement) -> Unit {
  let doc = document

  // Attach shadow DOM and clone template
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )
  let template : HTMLTemplateElement = doc
    .get_element_by_id("wc-calculator-template")
    .into()
  shadow.append_child(template.content().clone_node(subtree=true)) |> ignore

  // Query shadow DOM for display elements
  let display : HTMLDivElement = shadow
    .query_selector("[data-ref=display]")
    .into()
  let status : HTMLDivElement = shadow
    .query_selector("[data-ref=status]")
    .into()

  // Calculator state
  let mut state = clear_all_state()

  // Wire up all buttons via data-key attributes
  let buttons = shadow.query_selector_all("button[data-key]")
  for i in 0U..<buttons.length() {
    guard buttons.item_opt(i) is Some(node) else { continue }
    let el : Element = node.into()
    guard el.get_attribute("data-key") is Some(key) else { continue }
    el.add_event_listener("click", fn(_event) {
      guard process_key(state, key) is Some(new_state) else { () }
      state = new_state
      render_ui(display, status, state)
    })
  }

  // Keyboard support
  doc.add_event_listener("keydown", fn(event) {
    let kb_event : KeyboardEvent = event.into()
    guard map_keyboard_key(kb_event.key()) is Some(calc_key) else { () }
    guard process_key(state, calc_key) is Some(new_state) else { () }
    state = new_state
    render_ui(display, status, state)
    kb_event.prevent_default()
  })

  render_ui(display, status, state)
}

///|
fn main {
  @webapi.define_custom_element("wc-calculator", wc_calculator)
}
