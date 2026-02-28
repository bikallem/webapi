///|
/// Pick a file via showOpenFilePicker and call show_file with the result.
/// Uses extern "js" to avoid moonc ICE with OpenFilePickerOptions (Array[T] = [] default).
extern "js" fn pick_file_js(
  on_file : (@webapi.File) -> Unit,
  on_error : (String) -> Unit,
) -> Unit =
  #|(onFile, onError) => {
  #|  window.showOpenFilePicker().then(handles => {
  #|    if (handles.length > 0) {
  #|      handles[0].getFile().then(file => onFile(file)).catch(e => onError(String(e)));
  #|    }
  #|  }).catch(e => onError(String(e)));
  #|}

///|
fn pick_and_read_file(
  info_el : @webapi.HTMLDivElement,
  content_el : @webapi.HTMLDivElement,
) -> Unit {
  pick_file_js(fn(file) { show_file(file, info_el, content_el) }, fn(msg) {
    info_el.set_text_content(msg)
  })
}
