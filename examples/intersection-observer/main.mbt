///|
/// Intersection Observer Demo - observe elements entering/leaving viewport
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Intersection Observer Demo")

  let info = doc.create_element("p")
  info.set_text_content(
    "Scroll the container to see boxes enter and leave the viewport:",
  )

  // Log display
  let log = doc.create_element("div")
  log
  ..set_attribute("id", "intersection-log")
  ..set_attribute(
    "style", "font-family: monospace; padding: 1em; background: #f5f5f5; margin: 1em 0; min-height: 3em; border-radius: 4px;",
  )
  .set_text_content("Scroll to see intersections...")

  // Scrollable container
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container
  ..set_attribute("id", "container")
  .set_attribute(
    "style", "height: 200px; overflow-y: scroll; border: 2px solid #ccc; padding: 1em; border-radius: 4px;",
  )

  // Create spacer + colored boxes
  let colors = ["#ff6b6b", "#4ecdc4", "#45b7d1", "#96ceb4", "#ffeaa7"]
  let spacer_top = doc.create_element("div")
  spacer_top.set_attribute("style", "height: 100px;")
  container.append_child(spacer_top) |> ignore

  for i, color in colors {
    let box = doc.create_element("div")
    let box_id = "box-" + i.to_string()
    box
    ..set_attribute("id", box_id)
    ..set_attribute("class", "box")
    ..set_attribute(
      "style",
      "height: 80px; margin: 20px 0; background: " +
      color +
      "; border-radius: 8px; display: grid; place-items: center; color: white; font-weight: bold; font-size: 1.2em;",
    )
    .set_text_content("Box " + (i + 1).to_string())
    container.append_child(box) |> ignore
  }

  let spacer_bottom = doc.create_element("div")
  spacer_bottom.set_attribute("style", "height: 100px;")
  container.append_child(spacer_bottom) |> ignore

  // Set up IntersectionObserver
  let root : @webapi.Element = @webapi.TJsValue::to_js(container).into()
  let options = @webapi.IntersectionObserverInit::new(root~, threshold=0.5)
  let observer = @webapi.IntersectionObserver::new(
    fn(entries, _observer) {
      let visible : Array[String] = []
      for entry in entries {
        if entry.is_intersecting() {
          visible.push(entry.target().text_content())
        }
      }
      if visible.length() > 0 {
        log.set_text_content("Visible: " + visible.join(", "))
      }
    },
    options~,
  )

  // Observe all boxes
  let boxes = container.query_selector_all(".box")
  for i = 0U; i < boxes.length(); i = i + 1 {
    guard boxes.item_opt(i) is Some(node) else { continue }
    let el : @webapi.Element = @webapi.TJsValue::to_js(node).into()
    observer.observe(el)
  }

  let app : @webapi.Element = doc.get_element_by_id("app")
  let outer : @webapi.HTMLDivElement = doc.create_element("div").into()
  outer.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, info, container, log]
  for child in children {
    outer.append_child(child) |> ignore
  }
  app.append_child(outer) |> ignore
}
