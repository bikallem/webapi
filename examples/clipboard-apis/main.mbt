///|
/// Clipboard API Demo - copy and paste text using navigator.clipboard
fn main {
  let doc = @webapi.document

  let heading = doc.create_element("h1")
  heading.set_text_content("Clipboard API Demo")

  let info = doc.create_element("p")
  info
  ..set_attribute("style", "color: #666;")
  .set_text_content("Requires secure context (HTTPS or localhost).")

  // Input field
  let input : @webapi.HTMLInputElement = doc.create_element("input").into()
  input
  ..set_attribute("id", "input-text")
  ..set_attribute("type", "text")
  ..set_attribute("placeholder", "Type text to copy...")
  ..set_attribute(
    "style", "width: 100%; padding: 0.5em; font-size: 1em; box-sizing: border-box;",
  )
  .set_value("Hello, Clipboard!")

  // Copy button
  let copy_btn : @webapi.HTMLButtonElement = doc.create_element("button").into()
  copy_btn
  ..set_attribute("id", "copy-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em 0.5em 0;",
  )
  .set_text_content("Copy")

  // Paste button
  let paste_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  paste_btn
  ..set_attribute("id", "paste-btn")
  ..set_attribute(
    "style", "padding: 0.5em 1em; font-size: 1em; margin: 0.5em 0.25em;",
  )
  .set_text_content("Paste")

  // Paste result
  let paste_result = doc.create_element("div")
  paste_result
  ..set_attribute("id", "paste-result")
  ..set_attribute(
    "style", "font-family: monospace; padding: 1em; background: #f5f5f5; margin: 1em 0; border-radius: 4px; min-height: 2em;",
  )
  .set_text_content("Paste result will appear here")

  copy_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let text = input.value()
      @async.run_async_main(async fn() { do_copy(text) })
    }),
  )

  paste_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      @async.run_async_main(async fn() { do_paste() })
    }),
  )

  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )
  let children : Array[&@webapi.TNode] = [
    heading, info, input, copy_btn, paste_btn, paste_result,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}

///|
extern "js" fn clipboard_write_text(
  text : String,
) -> @js_async.Promise[@webapi.JsValue] =
  #| (text) => navigator.clipboard.writeText(text)

///|
extern "js" fn clipboard_read_text() -> @js_async.Promise[String] =
  #| () => navigator.clipboard.readText()

///|
async fn do_copy(text : String) -> Unit {
  let result = @webapi.document.get_element_by_id("paste-result").unwrap()
  try {
    let _ : @webapi.JsValue = clipboard_write_text(text).wait()
    result.set_text_content("Copied: \"" + text + "\"")
  } catch {
    err => result.set_text_content("Copy failed: " + err.to_string())
  }
}

///|
async fn do_paste() -> Unit {
  let result = @webapi.document.get_element_by_id("paste-result").unwrap()
  try {
    let text : String = clipboard_read_text().wait()
    result.set_text_content("Pasted: \"" + text + "\"")
  } catch {
    err => result.set_text_content("Paste failed: " + err.to_string())
  }
}
