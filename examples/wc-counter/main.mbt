///|
/// WC Counter example: <my-counter> custom element with Shadow DOM
fn main {
  let doc = @webapi.document

  // Register the <my-counter> custom element
  @webapi.define_custom_element("my-counter", fn(host) {
    // Attach shadow DOM
    let shadow = host.attach_shadow(
      @webapi.ShadowRootInit::new(@webapi.ShadowRootMode::Open),
    )

    // Set up shadow DOM template
    let template =
      #|<style>
      #|  :host { display: block; border: 2px solid #ccc; border-radius: 8px; padding: 1em; margin: 0.5em 0; font-family: system-ui; text-align: center; }
      #|  .count { font-size: 2em; margin: 0.5em 0; }
      #|  button { padding: 0.4em 0.8em; font-size: 1em; margin: 0 0.25em; cursor: pointer; }
      #|</style>
      #|<div class="count" data-ref="display">0</div>
      #|<button data-ref="dec">−</button>
      #|<button data-ref="inc">+</button>
      #|<button data-ref="reset">Reset</button>
    shadow.set_inner_html(template)

    // Query shadow DOM for elements
    let display = shadow.query_selector("[data-ref=display]").unwrap()
    let dec_btn = shadow.query_selector("[data-ref=dec]").unwrap()
    let inc_btn = shadow.query_selector("[data-ref=inc]").unwrap()
    let reset_btn = shadow.query_selector("[data-ref=reset]").unwrap()

    // Counter state (mutable array cell)
    let state : Array[Int] = [0]

    // Update display and dispatch custom event
    let update = fn() {
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
