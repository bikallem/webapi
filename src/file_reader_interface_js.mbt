///|
extern "js" fn file_reader_new_ffi() -> FileReader = "() => new FileReader()"

///|
extern "js" fn file_reader_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsArrayBuffer(blob)"

///|
extern "js" fn file_reader_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsBinaryString(blob)"

///|
extern "js" fn file_reader_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> Unit = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

///|
extern "js" fn file_reader_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsDataURL(blob)"

///|
extern "js" fn file_reader_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort()"

///|
extern "js" fn file_reader_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn file_reader_ready_state_ffi(obj : JsValue) -> UInt {
  file_reader_ready_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_result_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.result"

///|
fn file_reader_result_ffi(obj : JsValue) -> FileReaderResult {
  file_reader_result_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
fn file_reader_error_ffi(obj : JsValue) -> DOMException {
  file_reader_error_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_onloadstart_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
fn file_reader_onloadstart_ffi(obj : JsValue) -> EventHandler {
  file_reader_onloadstart_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
extern "js" fn file_reader_onprogress_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
fn file_reader_onprogress_ffi(obj : JsValue) -> EventHandler {
  file_reader_onprogress_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
extern "js" fn file_reader_onload_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onload"

///|
fn file_reader_onload_ffi(obj : JsValue) -> EventHandler {
  file_reader_onload_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
extern "js" fn file_reader_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn file_reader_onabort_ffi(obj : JsValue) -> EventHandler {
  file_reader_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn file_reader_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn file_reader_onerror_ffi(obj : JsValue) -> EventHandler {
  file_reader_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn file_reader_onloadend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onloadend"

///|
fn file_reader_onloadend_ffi(obj : JsValue) -> EventHandler {
  file_reader_onloadend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_reader_set_onloadend_ffi(
  obj : JsValue,
  onloadend : JsValue,
) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"
