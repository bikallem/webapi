///|
fn file_reader_new_ffi() -> FileReader = "webapi_FileReader" "new"

///|
fn file_reader_read_as_array_buffer_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsArrayBuffer"

///|
fn file_reader_read_as_binary_string_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsBinaryString"

///|
fn file_reader_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> Unit = "webapi_FileReader" "readAsText"

///|
fn file_reader_read_as_data_url_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsDataURL"

///|
fn file_reader_abort_ffi(obj : JsValue) -> Unit = "webapi_FileReader" "abort"

///|
fn file_reader_ready_state_ffi(obj : JsValue) -> UInt = "webapi_FileReader" "get_readyState"

///|
fn file_reader_result_ffi(obj : JsValue) -> FileReaderResult = "webapi_FileReader" "get_result"

///|
fn file_reader_error_ffi(obj : JsValue) -> DOMException = "webapi_FileReader" "get_error"

///|
fn file_reader_onloadstart_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onloadstart"

///|
fn file_reader_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "webapi_FileReader" "set_onloadstart"

///|
fn file_reader_onprogress_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onprogress"

///|
fn file_reader_set_onprogress_ffi(obj : JsValue, onprogress : JsValue) -> Unit = "webapi_FileReader" "set_onprogress"

///|
fn file_reader_onload_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onload"

///|
fn file_reader_set_onload_ffi(obj : JsValue, onload : JsValue) -> Unit = "webapi_FileReader" "set_onload"

///|
fn file_reader_onabort_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onabort"

///|
fn file_reader_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_FileReader" "set_onabort"

///|
fn file_reader_onerror_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onerror"

///|
fn file_reader_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_FileReader" "set_onerror"

///|
fn file_reader_onloadend_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_FileReader" "get_onloadend"

///|
fn file_reader_set_onloadend_ffi(obj : JsValue, onloadend : JsValue) -> Unit = "webapi_FileReader" "set_onloadend"
