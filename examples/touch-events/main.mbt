///|
/// Touch Events Demo - display touch information
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Touch Events Demo")

  // Touch tracking area
  let touch_area : @webapi.HTMLDivElement = doc.create_element("div").into()
  touch_area
  ..set_attribute("id", "touch-area")
  .set_attribute(
    "style", "width: 100%; height: 250px; background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%); border-radius: 8px; display: grid; place-items: center; touch-action: none; user-select: none;",
  )
  touch_area.set_text_content("Touch here")

  // Info display
  let touch_info = doc.create_element("div")
  touch_info
  ..set_attribute("id", "touch-info")
  ..set_attribute("style", "font-family: monospace; padding: 1em; background: #f5f5f5; margin: 1em 0; border-radius: 4px; white-space: pre-line;")
  .set_text_content("Touch info: touch the area above (on a touch device)")

  // Set up touch event listeners
  setup_touch_listeners(touch_area, fn(event_type, count, x, y) {
    touch_info.set_text_content("Event: " + event_type + "\nTouches: " + count.to_string() + "\nPosition: (" + x.to_string() + ", " + y.to_string() + ")")
  })

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [heading, touch_area, touch_info]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn setup_touch_listeners(
  el : @webapi.HTMLDivElement,
  callback : (String, Int, Int, Int) -> Unit
) =
  #| (el, cb) => {
  #|   for (const type of ['touchstart', 'touchmove', 'touchend']) {
  #|     el.addEventListener(type, (e) => {
  #|       e.preventDefault();
  #|       const t = e.touches[0] || e.changedTouches[0];
  #|       cb(e.type, e.touches.length, Math.round(t ? t.clientX : 0), Math.round(t ? t.clientY : 0));
  #|     });
  #|   }
  #| }
