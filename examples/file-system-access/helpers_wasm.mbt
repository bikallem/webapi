///|
/// Pick a file and read it using typed bindings (works on wasm-gc).
fn pick_and_read_file(
  info_el : @webapi.HTMLDivElement,
  content_el : @webapi.HTMLDivElement,
) -> Unit {
  @webapi.window()
  .show_open_file_picker()
  .then(fn(handles : Array[@webapi.FileSystemFileHandle]) {
    if handles.length() > 0 {
      let handle = handles[0]
      info_el.set_text_content("Reading: " + handle.name())
      handle
      .get_file()
      .then(fn(file : @webapi.File) { show_file(file, info_el, content_el) })
      .catch_(fn(_err) { info_el.set_text_content("Error reading file.") })
      |> ignore
    }
  })
  .catch_(fn(_err) { info_el.set_text_content("No file selected.") })
  |> ignore
}
