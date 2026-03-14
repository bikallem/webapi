///|
/// File System Access API Demo - pick and read files using showOpenFilePicker
using @webapi {
  document,
  type File,
  type HTMLButtonElement,
  type HTMLDivElement,
  type Element,
}

///|
fn main {
  let app : Element = document().get_element_by_id("app")
  let container : HTMLDivElement = document().create_element("div").into()
  container.set_attribute(
    "style", "font-family: system-ui; max-width: 600px; margin: 2em auto;",
  )

  let heading = document().create_element("h1")
  heading.set_text_content("File System Access Demo")
  container.append_child(heading) |> ignore

  let description = document().create_element("p")
  description
  ..set_attribute("style", "color: #555; margin-bottom: 1em;")
  .set_text_content("Pick a text file to read its name, size, and contents.")
  container.append_child(description) |> ignore

  // Pick file button
  let pick_btn : HTMLButtonElement = document().create_element("button").into()
  pick_btn
  ..set_attribute("id", "pick-btn")
  ..set_text_content("Pick File")
  .set_attribute(
    "style", "padding: 0.5em 1.2em; font-size: 1em; cursor: pointer; background: #4a90d9; color: white; border: none; border-radius: 4px; margin-bottom: 1em;",
  )
  container.append_child(pick_btn) |> ignore

  // File info display
  let file_info : HTMLDivElement = document().create_element("div").into()
  file_info
  ..set_attribute("id", "file-info")
  ..set_text_content("No file selected.")
  .set_attribute(
    "style", "font-family: monospace; padding: 0.5em; background: #f5f5f5; border-radius: 4px; margin-bottom: 1em;",
  )
  container.append_child(file_info) |> ignore

  // File contents display
  let content_label = document().create_element("div")
  content_label
  ..set_attribute("style", "font-weight: bold; margin-bottom: 0.25em;")
  .set_text_content("Contents:")
  container.append_child(content_label) |> ignore

  let content_div : HTMLDivElement = document().create_element("div").into()
  content_div
  ..set_attribute("id", "file-content")
  .set_attribute(
    "style", "font-family: monospace; font-size: 0.85em; padding: 0.75em; background: #f5f5f5; border-radius: 4px; white-space: pre-wrap; max-height: 300px; overflow: auto; min-height: 2em;",
  )
  container.append_child(content_div) |> ignore

  pick_btn.add_event_listener("click", fn(_event) {
    file_info.set_text_content("Opening file picker...")
    content_div.set_text_content("")
    pick_and_read_file(file_info, content_div)
  })

  app.append_child(container) |> ignore
}

///|
fn show_file(
  file : File,
  info_el : HTMLDivElement,
  content_el : HTMLDivElement,
) -> Unit {
  info_el.set_text_content(
    "Name: " +
    file.name() +
    "  |  Size: " +
    file.size().to_string() +
    " bytes  |  Type: " +
    file.type_(),
  )
  file
  .text()
  .then(fn(text : String) { content_el.set_text_content(text) })
  .catch_(fn(_err) { content_el.set_text_content("(could not read as text)") })
  |> ignore
}
