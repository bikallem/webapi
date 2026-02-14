///|
/// IndexedDB example demonstrating database creation, object store operations
/// (put, get, delete, clear), and event-based request handling.

///|
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()

  // Container
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style",
    "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading = doc.create_element("h1")
  heading.set_text_content("IndexedDB")

  // Key input
  let key_input : @webapi.HTMLInputElement = doc
    .create_element("input")
    .into()
  key_input
  ..set_attribute("id", "key-input")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Key")
  .set_attribute(
    "style",
    "padding: 0.4em; margin: 0.25em; font-size: 1em; width: 150px;",
  )

  // Value input
  let value_input : @webapi.HTMLInputElement = doc
    .create_element("input")
    .into()
  value_input
  ..set_attribute("id", "value-input")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Value")
  .set_attribute(
    "style",
    "padding: 0.4em; margin: 0.25em; font-size: 1em; width: 150px;",
  )

  // Button style
  let btn_style = "padding: 0.5em 1em; margin: 0.25em; font-size: 1em;"

  // Buttons
  let put_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  put_btn
  ..set_id("put-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Put")

  let get_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  get_btn
  ..set_id("get-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Get")

  let delete_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  delete_btn
  ..set_id("delete-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Delete")

  let clear_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  clear_btn
  ..set_id("clear-btn")
  ..set_attribute("style", btn_style)
  .set_text_content("Clear")

  // Status display
  let status_el = doc.create_element("div")
  status_el.set_id("status")
  status_el.set_attribute("style", "margin: 0.5em 0; color: gray;")
  status_el.set_text_content("Opening database...")

  // Result display
  let result_el = doc.create_element("pre")
  result_el.set_id("result")
  result_el.set_attribute(
    "style",
    "background: #f5f5f5; padding: 1em; margin: 0.5em 0; min-height: 2em; font-family: monospace;",
  )

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, key_input, value_input, put_btn, get_btn, delete_btn, clear_btn,
    status_el, result_el,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore

  // Open database
  let factory = @webapi.window.indexed_db()
  let open_request = factory.open("webapi-example-db")

  // Create object store on first open / version upgrade
  open_request.add_event_listener(
    "upgradeneeded",
    @webapi.EventListener::new(fn(_event) {
      let db : @webapi.IDBDatabase = open_request.result().into()
      db.create_object_store("items") |> ignore
    }),
  )

  // Database ready
  open_request.add_event_listener(
    "success",
    @webapi.EventListener::new(fn(_event) {
      let db : @webapi.IDBDatabase = open_request.result().into()
      let version = db.version()
      status_el.set_text_content("Database ready (v\{version})")

      // Put handler
      put_btn.add_event_listener(
        "click",
        @webapi.EventListener::new(fn(_event) {
          let key = key_input.value()
          let value = value_input.value()
          if key == "" {
            result_el.set_text_content("Error: key is required")
            return
          }
          let tx = db.transaction(
            "items",
            mode=@webapi.IDBTransactionMode::Readwrite,
          )
          let store = tx.object_store("items")
          let req = store.put(
            @webapi.TJsValue::to_js(value),
            key=@webapi.TJsValue::to_js(key),
          )
          req.add_event_listener(
            "success",
            @webapi.EventListener::new(fn(_event) {
              result_el.set_text_content("Put: " + key + " = " + value)
            }),
          )
        }),
      )

      // Get handler
      get_btn.add_event_listener(
        "click",
        @webapi.EventListener::new(fn(_event) {
          let key = key_input.value()
          let tx = db.transaction(
            "items",
            mode=@webapi.IDBTransactionMode::Readonly,
          )
          let store = tx.object_store("items")
          let req = store.get(@webapi.TJsValue::to_js(key))
          req.add_event_listener(
            "success",
            @webapi.EventListener::new(fn(_event) {
              let val = req.result()
              if is_null_or_undefined(val) {
                result_el.set_text_content("Not found: " + key)
              } else {
                let str = js_value_to_string(val)
                result_el.set_text_content("Found: " + key + " = " + str)
              }
            }),
          )
        }),
      )

      // Delete handler
      delete_btn.add_event_listener(
        "click",
        @webapi.EventListener::new(fn(_event) {
          let key = key_input.value()
          let tx = db.transaction(
            "items",
            mode=@webapi.IDBTransactionMode::Readwrite,
          )
          let store = tx.object_store("items")
          let req = store.delete(@webapi.TJsValue::to_js(key))
          req.add_event_listener(
            "success",
            @webapi.EventListener::new(fn(_event) {
              result_el.set_text_content("Deleted: " + key)
            }),
          )
        }),
      )

      // Clear handler
      clear_btn.add_event_listener(
        "click",
        @webapi.EventListener::new(fn(_event) {
          let tx = db.transaction(
            "items",
            mode=@webapi.IDBTransactionMode::Readwrite,
          )
          let store = tx.object_store("items")
          let req = store.clear()
          req.add_event_listener(
            "success",
            @webapi.EventListener::new(fn(_event) {
              result_el.set_text_content("All items cleared")
            }),
          )
        }),
      )
    }),
  )

  // Error handler
  open_request.add_event_listener(
    "error",
    @webapi.EventListener::new(fn(_event) {
      status_el.set_text_content("Error opening database")
    }),
  )
}
