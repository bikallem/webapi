///|
/// WC Counter example: <my-counter> custom element with Shadow DOM
fn main {
  let doc = @webapi.document

  // Register the <my-counter> custom element
  @webapi.define_custom_element("my-counter", fn(host) {
    // Attach shadow DOM and clone template
    let shadow = host.attach_shadow(
      @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
    )
    let template : @webapi.HTMLTemplateElement = doc
      .get_element_by_id("my-counter-template")
      .unwrap()
      .into()
    shadow.append_child(template.content().clone_node(subtree=true)) |> ignore

    // Query shadow DOM for elements
    let display = shadow.query_selector("[data-ref=display]").unwrap()
    let dec_btn = shadow.query_selector("[data-ref=dec]").unwrap()
    let inc_btn = shadow.query_selector("[data-ref=inc]").unwrap()
    let reset_btn = shadow.query_selector("[data-ref=reset]").unwrap()

    // Counter state (mutable array cell)
    let state : Array[Int] = [0]

    // Update display and dispatch custom event
    fn update() {
      display.set_text_content(state[0].to_string())
      let event = @webapi.CustomEvent::new(
        "count-changed",
        event_init_dict=@webapi.CustomEventInit::new(
          bubbles=true,
          composed=true,
          detail=@webapi.TJsValue::to_js(state[0]),
        ),
      )
      host.dispatch_event(event) |> ignore
    }

    dec_btn.add_event_listener("click", fn(_e) {
      state[0] = state[0] - 1
      update()
    })
    inc_btn.add_event_listener("click", fn(_e) {
      state[0] = state[0] + 1
      update()
    })
    reset_btn.add_event_listener("click", fn(_e) {
      state[0] = 0
      update()
    })
  })

  // Listen for count-changed events (bubbles up through composed boundary)
  let app = doc.get_element_by_id("app").unwrap()
  let log = doc.get_element_by_id("event-log").unwrap()
  app.add_event_listener("count-changed", fn(event) {
    let ce : @webapi.CustomEvent = event.into()
    let detail = ce.detail()
    let target : @webapi.Element = event.target().into()
    let id = target.id()
    log.set_text_content("Event log: " + id + " → " + detail.to_string())
  })
}
