///|
fn my_counter(host : @webapi.HTMLElement) -> Unit {
  let doc = @webapi.document()

  // Attach shadow DOM and clone template
  let shadow = host.attach_shadow(
    @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
  )
  let template : @webapi.HTMLTemplateElement = doc
    .get_element_by_id("my-counter-template")
    .into()
  shadow.append_child(template.content().clone_node(subtree=true)) |> ignore

  // Query shadow DOM for elements
  let display = shadow.query_selector("[data-ref=display]")
  let dec_btn = shadow.query_selector("[data-ref=dec]")
  let inc_btn = shadow.query_selector("[data-ref=inc]")
  let reset_btn = shadow.query_selector("[data-ref=reset]")

  // Counter state
  let state : Ref[Int] = { val: 0 }

  // Update display and dispatch custom event
  fn update() {
    display.set_text_content(state.val.to_string())
    let event = @webapi.CustomEvent::new(
      "count-changed",
      event_init_dict=@webapi.CustomEventInit::new(
        bubbles=true,
        composed=true,
        detail=@webapi.TJsValue::to_js(state.val),
      ),
    )
    host.dispatch_event(event) |> ignore
  }

  dec_btn.add_event_listener("click", fn(_e) {
    state.val = state.val - 1
    update()
  })
  inc_btn.add_event_listener("click", fn(_e) {
    state.val = state.val + 1
    update()
  })
  reset_btn.add_event_listener("click", fn(_e) {
    state.val = 0
    update()
  })
}

///|
/// WC Counter example: <my-counter> custom element with Shadow DOM
fn main {
  let doc = @webapi.document()

  // Register the <my-counter> custom element
  @webapi.define_custom_element("my-counter", my_counter)

  // Listen for count-changed events (bubbles up through composed boundary)
  let app : @webapi.Element = doc.get_element_by_id("app")
  let log : @webapi.Element = doc.get_element_by_id("event-log")
  app.add_event_listener("count-changed", fn(event) {
    let ce : @webapi.CustomEvent = event.into()
    let detail = ce.detail()
    let target : @webapi.Element = event.target().into()
    let id = target.id()
    log.set_text_content("Event log: " + id + " → " + detail.to_string())
  })
}
