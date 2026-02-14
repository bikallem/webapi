///|
/// File API example demonstrating Blob, File, and FileReader.
fn main {
  let doc = @webapi.document
  let app = doc.get_element_by_id("app").unwrap()
  let container : @webapi.HTMLDivElement = doc.create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  // Heading
  let heading : @webapi.HTMLHeadingElement = doc.create_element("h1").into()
  heading.set_text_content("File API")

  // Create a Blob
  let blob = create_text_blob("Hello from MoonBit Blob!", "text/plain")
  let blob_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  blob_info
  ..set_attribute("id", "blob-info")
  .set_text_content(
    "Blob: size=" + blob.size().to_string() + ", type=" + blob.type_(),
  )

  // Create a File
  let file = create_text_file("File content here", "example.txt", "text/plain")
  let file_info : @webapi.HTMLDivElement = doc.create_element("div").into()
  file_info
  ..set_attribute("id", "file-info")
  .set_text_content(
    "File: name=" +
    file.name() +
    ", size=" +
    file.size().to_string() +
    ", type=" +
    file.type_(),
  )

  // Read as text button
  let read_text_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  read_text_btn
  ..set_attribute("id", "read-text-btn")
  .set_text_content("Read Blob as Text")
  let text_output : @webapi.HTMLDivElement = doc.create_element("div").into()
  text_output.set_attribute("id", "text-output")
  read_text_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let reader = @webapi.FileReader::new()
      reader.set_onload(
        @webapi.EventHandlerNonNull::new(fn(_ev) -> @webapi.JsValue {
          let result : String = reader.result().into()
          text_output.set_text_content(result)
          @webapi.JsValue::undefined()
        }),
      )
      reader.read_as_text(blob)
    }),
  )

  // Read as data URL button
  let read_url_btn : @webapi.HTMLButtonElement = doc
    .create_element("button")
    .into()
  read_url_btn
  ..set_attribute("id", "read-url-btn")
  .set_text_content("Read Blob as Data URL")
  let url_output : @webapi.HTMLDivElement = doc.create_element("div").into()
  url_output
  ..set_attribute("id", "url-output")
  .set_attribute("style", "word-break: break-all;")
  read_url_btn.add_event_listener(
    "click",
    @webapi.EventListener::new(fn(_event) {
      let reader = @webapi.FileReader::new()
      reader.set_onload(
        @webapi.EventHandlerNonNull::new(fn(_ev) -> @webapi.JsValue {
          let result : String = reader.result().into()
          url_output.set_text_content(result)
          @webapi.JsValue::undefined()
        }),
      )
      reader.read_as_data_url(blob)
    }),
  )

  // Build DOM
  let children : Array[&@webapi.TNode] = [
    heading, blob_info, file_info, read_text_btn, text_output, read_url_btn, url_output,
  ]
  for child in children {
    container.append_child(child) |> ignore
  }
  app.append_child(container) |> ignore
}
