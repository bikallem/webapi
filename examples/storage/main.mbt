///|
/// Storage example demonstrating localStorage setItem, getItem, removeItem,
/// clear, length, and key. Uses manual extern "js" FFI for getItem/setItem/
/// removeItem since these are WebIDL special operations not yet generated.

// Manual FFI for missing Storage special operations
///|
extern "js" fn storage_get_item(
  storage : @webapi.Storage,
  key : String
) -> String? =
  #| (s, k) => { const v = s.getItem(k); return v === null ? undefined : v; }

///|
extern "js" fn storage_set_item(
  storage : @webapi.Storage,
  key : String,
  value : String
) -> Unit =
  #| (s, k, v) => s.setItem(k, v)

///|
extern "js" fn storage_remove_item(
  storage : @webapi.Storage,
  key : String
) -> Unit =
  #| (s, k) => s.removeItem(k)

///|
fn main {
  let doc = @webapi.document
  let storage = @webapi.window.local_storage()

  // Create heading
  let heading = doc.create_element("h1")
  heading.set_text_content("Storage Example")

  // Key input
  let key_input : @webapi.HTMLInputElement = doc.create_element("input").into()
  key_input
  ..set_attribute("id", "key-input")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Key")
  .set_attribute(
    "style",
    "padding: 0.4em; margin: 0.25em; font-size: 1em; width: 150px;",
  )

  // Value input
  let val_input : @webapi.HTMLInputElement = doc.create_element("input").into()
  val_input
  ..set_attribute("id", "value-input")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Value")
  .set_attribute(
    "style",
    "padding: 0.4em; margin: 0.25em; font-size: 1em; width: 150px;",
  )

  // Storage contents display
  let contents_el = doc.create_element("pre")
  contents_el
  ..set_attribute("id", "contents")
  .set_attribute(
    "style",
    "background: #f5f5f5; padding: 1em; margin: 0.5em 0; min-height: 2em; font-family: monospace;",
  )

  // Status display
  let status_el = doc.create_element("div")
  status_el
  ..set_attribute("id", "status")
  .set_attribute("style", "margin: 0.5em 0; color: gray;")

  // Refresh contents display
  let refresh = fn() {
    let len = storage.length()
    let mut text = ""
    for i in 0U..<len {
      match storage.key(i) {
        Some(k) => {
          let val = storage_get_item(storage, k).unwrap_or("")
          text = text + k + " = " + val + "\n"
        }
        None => ()
      }
    }
    if text == "" {
      text = "(empty)"
    }
    contents_el.set_text_content(text)
    status_el.set_text_content("Items: " + len.to_string())
  }

  // Set button
  let set_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  set_btn
  ..set_attribute("id", "set-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;")
  .set_text_content("Set")

  set_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let key = key_input.value()
      let val = val_input.value()
      if key != "" {
        storage_set_item(storage, key, val)
        refresh()
      }
    }),
  )

  // Get button
  let get_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  get_btn
  ..set_attribute("id", "get-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;")
  .set_text_content("Get")

  get_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let key = key_input.value()
      match storage_get_item(storage, key) {
        Some(val) => val_input.set_value(val)
        None => val_input.set_value("(not found)")
      }
    }),
  )

  // Remove button
  let remove_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  remove_btn
  ..set_attribute("id", "remove-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;")
  .set_text_content("Remove")

  remove_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let key = key_input.value()
      if key != "" {
        storage_remove_item(storage, key)
        refresh()
      }
    }),
  )

  // Clear button
  let clear_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  clear_btn
  ..set_attribute("id", "clear-btn")
  ..set_attribute("style", "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;")
  .set_text_content("Clear All")

  clear_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      storage.clear()
      refresh()
    }),
  )

  // Build DOM
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style",
    "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, key_input, val_input, set_btn, get_btn, remove_btn, clear_btn,
    status_el, contents_el,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  // Initial display
  refresh()
}
