///|
/// Reproduction for moonbitlang/moonbit-docs#1123
/// wasm-gc: trait object from #external type causes validation error
///
/// CustomEvent is an #external type (externref). Passing it to
/// dispatch_event(event : &TEvent) — which expects a trait object —
/// produces invalid wasm-gc code that fails at instantiation time.
fn main {
  let doc = @webapi.document
  let btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  btn.set_text_content("Dispatch CustomEvent")
  btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let event = @webapi.CustomEvent::new("hello")
      // This call passes an #external type as &TEvent — triggers the bug
      btn.dispatch_event(event) |> ignore
    }),
  )
  doc.get_element_by_id("app").unwrap().append_child(btn) |> ignore
}
