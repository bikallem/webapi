///|
#external
pub type FileReader

///|
pub impl TJsValue for FileReader with to_js(self : FileReader) -> JsValue = "%identity"

///|
pub fn[T : TFileReader] FileReader::into(self : FileReader) -> T = "%identity"

///|
pub impl TFileReader for FileReader

///|
pub impl TEventTarget for FileReader

///|
extern "js" fn file_reader_new_ffi() -> FileReader = "() => new FileReader()"

///|
pub fn FileReader::new() -> FileReader {
  file_reader_new_ffi()
}

///|
pub const FILE_READER_EMPTY : UInt = 0

///|
pub const FILE_READER_LOADING : UInt = 1

///|
pub const FILE_READER_DONE : UInt = 2

///|
#external
pub type FileReaderResult

///|
pub fn[T : TFileReaderResult] FileReaderResult::into(
  self : FileReaderResult,
) -> T = "%identity"

///|
pub impl TFileReaderResult for FileReaderResult with to_js(
  self : FileReaderResult,
) -> JsValue = "%identity"

///|
pub(open) trait TFileReaderResult {
  to_js(self : Self) -> JsValue
}

///|
pub impl TFileReaderResult for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TFileReaderResult for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"

///|
pub trait TFileReader: TEventTarget {
  read_as_array_buffer(self : Self, blob : &TBlob) -> Unit = _
  read_as_binary_string(self : Self, blob : &TBlob) -> Unit = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> Unit = _
  read_as_data_url(self : Self, blob : &TBlob) -> Unit = _
  abort(self : Self) -> Unit = _
  ready_state(self : Self) -> UInt = _
  result(self : Self) -> FileReaderResult = _
  error(self : Self) -> DOMException = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : EventHandler) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
  onloadend(self : Self) -> EventHandler = _
  set_onloadend(self : Self, onloadend : EventHandler) -> Unit = _
}

///|
extern "js" fn file_reader_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsArrayBuffer(obj, blob)"

///|
impl TFileReader with read_as_array_buffer(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_array_buffer_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsBinaryString(obj, blob)"

///|
impl TFileReader with read_as_binary_string(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_binary_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> Unit = "(obj, blob, encoding) => obj.readAsText(obj, blob, encoding)"

///|
impl TFileReader with read_as_text(
  self : Self,
  blob : &TBlob,
  encoding? : String,
) -> Unit {
  file_reader_read_as_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
    opt_to_js(encoding),
  )
}

///|
extern "js" fn file_reader_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsDataURL(obj, blob)"

///|
impl TFileReader with read_as_data_url(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_data_url_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

///|
extern "js" fn file_reader_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort(obj)"

///|
impl TFileReader with abort(self : Self) -> Unit {
  file_reader_abort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_ready_state_ffi(obj : JsValue) -> UInt = "(obj) => obj.readyState"

///|
impl TFileReader with ready_state(self : Self) -> UInt {
  file_reader_ready_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_result_ffi(obj : JsValue) -> FileReaderResult = "(obj) => obj.result"

///|
impl TFileReader with result(self : Self) -> FileReaderResult {
  file_reader_result_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_error_ffi(obj : JsValue) -> DOMException = "(obj) => obj.error"

///|
impl TFileReader with error(self : Self) -> DOMException {
  file_reader_error_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_onloadstart_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadstart"

///|
impl TFileReader with onloadstart(self : Self) -> EventHandler {
  file_reader_onloadstart_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onloadstart_ffi(
  obj : JsValue,
  onloadstart : JsValue,
) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

///|
impl TFileReader with set_onloadstart(self : Self, onloadstart : EventHandler) -> Unit {
  file_reader_set_onloadstart_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadstart),
  )
}

///|
extern "js" fn file_reader_onprogress_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onprogress"

///|
impl TFileReader with onprogress(self : Self) -> EventHandler {
  file_reader_onprogress_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onprogress_ffi(
  obj : JsValue,
  onprogress : JsValue,
) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

///|
impl TFileReader with set_onprogress(self : Self, onprogress : EventHandler) -> Unit {
  file_reader_set_onprogress_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onprogress),
  )
}

///|
extern "js" fn file_reader_onload_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onload"

///|
impl TFileReader with onload(self : Self) -> EventHandler {
  file_reader_onload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onload_ffi(
  obj : JsValue,
  onload : JsValue,
) -> Unit = "(obj, onload) => { obj.onload = onload; }"

///|
impl TFileReader with set_onload(self : Self, onload : EventHandler) -> Unit {
  file_reader_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(onload))
}

///|
extern "js" fn file_reader_onabort_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onabort"

///|
impl TFileReader with onabort(self : Self) -> EventHandler {
  file_reader_onabort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
impl TFileReader with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  file_reader_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
extern "js" fn file_reader_onerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onerror"

///|
impl TFileReader with onerror(self : Self) -> EventHandler {
  file_reader_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
impl TFileReader with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  file_reader_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
extern "js" fn file_reader_onloadend_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onloadend"

///|
impl TFileReader with onloadend(self : Self) -> EventHandler {
  file_reader_onloadend_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_reader_set_onloadend_ffi(
  obj : JsValue,
  onloadend : JsValue,
) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"

///|
impl TFileReader with set_onloadend(self : Self, onloadend : EventHandler) -> Unit {
  file_reader_set_onloadend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onloadend),
  )
}
