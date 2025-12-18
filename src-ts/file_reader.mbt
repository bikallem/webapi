// Auto-generated MoonBit bindings for FileReader

// Do not edit manually

///|
#external
pub type FileReader

///|
pub const EMPTY : UInt = 0
pub const LOADING : UInt = 1
pub const DONE : UInt = 2

///|
pub trait TFileReader: TJsValue + TEventTarget {
  ready_state(self : Self) -> UInt = _
  result(self : Self) -> Result = _
  error(self : Self) -> JsValue? = _
  onloadstart(self : Self) -> EventHandler = _
  set_onloadstart(self : Self, value : EventHandler) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, value : EventHandler) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, value : EventHandler) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, value : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, value : EventHandler) -> Unit = _
  onloadend(self : Self) -> EventHandler = _
  set_onloadend(self : Self, value : EventHandler) -> Unit = _
  read_as_array_buffer(self : Self, blob : &TBlob) -> Unit = _
  read_as_binary_string(self : Self, blob : &TBlob) -> Unit = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> Unit = _
  read_as_data_url(self : Self, blob : &TBlob) -> Unit = _
  abort(self : Self) -> Unit = _
}

///|
pub impl TEventTarget for FileReader

///|
pub impl TFileReader for FileReader

///|
pub impl TJsValue for FileReader with to_js(self : FileReader) -> JsValue = "%identity"

///|
pub fn FileReader::null() -> FileReader {
  JsValue::null()
}

///|
pub fn FileReader::new() -> FileReader = "webapi_FileReader" "new"

///|
fn file_reader_read_as_array_buffer_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsArrayBuffer"

///|
impl TFileReader with read_as_array_buffer(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_array_buffer_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

///|
fn file_reader_read_as_binary_string_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsBinaryString"

///|
impl TFileReader with read_as_binary_string(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_binary_string_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

///|
fn file_reader_read_as_text_ffi(obj : JsValue, blob : JsValue, encoding : JsValue) -> Unit = "webapi_FileReader" "readAsText"

///|
impl TFileReader with read_as_text(self : Self, blob : &TBlob, encoding? : String) -> Unit {
  let encoding_js = opt_to_js(encoding)
  file_reader_read_as_text_ffi(TJsValue::to_js(self), TJsValue::to_js(blob), encoding_js)
}

///|
fn file_reader_read_as_data_url_ffi(obj : JsValue, blob : JsValue) -> Unit = "webapi_FileReader" "readAsDataURL"

///|
impl TFileReader with read_as_data_url(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_data_url_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

///|
fn file_reader_abort_ffi(obj : JsValue) -> Unit = "webapi_FileReader" "abort"

///|
impl TFileReader with abort(self : Self) -> Unit {
  file_reader_abort_ffi(TJsValue::to_js(self))
}

///|
fn file_reader_ready_state_ffi(obj : JsValue) -> UInt = "webapi_FileReader" "readyState"

///|
impl TFileReader with ready_state(self : Self) -> UInt {
  file_reader_ready_state_ffi(self.to_js())
}

///|
fn file_reader_result_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "result"

///|
impl TFileReader with result(self : Self) -> Result {
  file_reader_result_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_error_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "error"

///|
impl TFileReader with error(self : Self) -> JsValue? {
  file_reader_error_ffi(self.to_js()).as_option()
}

///|
fn file_reader_onloadstart_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onloadstart"

///|
impl TFileReader with onloadstart(self : Self) -> EventHandler {
  file_reader_onloadstart_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onloadstart_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onloadstart"

///|
impl TFileReader with set_onloadstart(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onloadstart_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn file_reader_onprogress_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onprogress"

///|
impl TFileReader with onprogress(self : Self) -> EventHandler {
  file_reader_onprogress_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onprogress_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onprogress"

///|
impl TFileReader with set_onprogress(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onprogress_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn file_reader_onload_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onload"

///|
impl TFileReader with onload(self : Self) -> EventHandler {
  file_reader_onload_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onload_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onload"

///|
impl TFileReader with set_onload(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onload_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn file_reader_onabort_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onabort"

///|
impl TFileReader with onabort(self : Self) -> EventHandler {
  file_reader_onabort_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onabort_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onabort"

///|
impl TFileReader with set_onabort(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onabort_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn file_reader_onerror_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onerror"

///|
impl TFileReader with onerror(self : Self) -> EventHandler {
  file_reader_onerror_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onerror_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onerror"

///|
impl TFileReader with set_onerror(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onerror_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn file_reader_onloadend_ffi(obj : JsValue) -> JsValue = "webapi_FileReader" "onloadend"

///|
impl TFileReader with onloadend(self : Self) -> EventHandler {
  file_reader_onloadend_ffi(self.to_js()).unsafe_cast()
}

///|
fn file_reader_set_onloadend_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_FileReader" "set_onloadend"

///|
impl TFileReader with set_onloadend(self : Self, value : EventHandler) -> Unit {
  file_reader_set_onloadend_ffi(self.to_js(), TJsValue::to_js(value))
}