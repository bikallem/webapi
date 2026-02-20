///|
/// JsArray Callback Bridge Demo
/// Uses ResizeObserverCallback where callback args are Array[ResizeObserverEntry].
/// On wasm-gc this callback path is bridged internally through JsArray.
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("JsArray Callback Bridge Demo")

  let info = doc.create_element("p")
  info.set_text_content(
    "Resize the panel with buttons. Callback batches come in as Array[ResizeObserverEntry].",
  )

  let panel : @webapi.HTMLDivElement = doc.create_element("div").into()
  panel
  ..set_attribute("id", "panel")
  ..set_text_content("Observe my size")
  .set_attribute(
    "style", "width: 260px; height: 120px; border: 2px solid #4a90d9; border-radius: 8px; display: grid; place-items: center; margin: 1rem 0; background: #eef6ff;",
  )

  let controls : @webapi.HTMLDivElement = doc.create_element("div").into()
  controls.set_attribute(
    "style", "display: flex; gap: 0.5rem; margin-bottom: 0.75rem;",
  )

  let grow_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  grow_btn
  ..set_text_content("Grow")
  .set_attribute("style", "padding: 0.4rem 0.8rem; cursor: pointer;")

  let shrink_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  shrink_btn
  ..set_text_content("Shrink")
  .set_attribute("style", "padding: 0.4rem 0.8rem; cursor: pointer;")

  let log : @webapi.HTMLPreElement = doc.create_element("pre").into()
  log
  ..set_attribute("id", "log")
  .set_attribute(
    "style", "min-height: 120px; border: 1px solid #ddd; border-radius: 6px; padding: 0.75rem; background: #fafafa; white-space: pre-wrap;",
  )

  let mut width = 260
  fn apply_panel_style(panel : @webapi.HTMLDivElement, width : Int) -> Unit {
    panel.set_attribute(
      "style",
      "width: " +
      width.to_string() +
      "px; height: 120px; border: 2px solid #4a90d9; border-radius: 8px; display: grid; place-items: center; margin: 1rem 0; background: #eef6ff;",
    )
  }

  let observer = @webapi.ResizeObserver::new(fn(entries, _observer) {
    let lines : Array[String] = []
    lines.push("callback batch size: " + entries.length().to_string())
    for entry in entries {
      let rect = entry.content_rect()
      lines.push(
        "- " +
        rect.width().to_int().to_string() +
        " x " +
        rect.height().to_int().to_string(),
      )
    }
    log.set_text_content(lines.join("\n"))
  })
  observer.observe(panel)

  grow_btn.add_event_listener("click", fn(_event) {
    width += 30
    apply_panel_style(panel, width)
  })

  shrink_btn.add_event_listener("click", fn(_event) {
    width = if width > 140 { width - 30 } else { width }
    apply_panel_style(panel, width)
  })

  controls.append_child(grow_btn) |> ignore
  controls.append_child(shrink_btn) |> ignore

  let app = doc.get_element_by_id("app").unwrap()
  let root : @webapi.HTMLDivElement = doc.create_element("div").into()
  root.set_attribute(
    "style", "font-family: system-ui; max-width: 760px; margin: 2rem auto;",
  )

  let children : Array[&@webapi.TNode] = [heading, info, controls, panel, log]
  for child in children {
    root.append_child(child) |> ignore
  }
  app.append_child(root) |> ignore
}
