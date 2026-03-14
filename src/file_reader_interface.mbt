// Do not edit. This file is generated.
// MoonBit type: FileReader
// Specifications: FileAPI.idl

/// [FileReader](https://developer.mozilla.org/en-US/docs/Web/API/FileReader)
#external
pub type FileReader

pub impl TJsValue for FileReader with to_js(self: FileReader) -> JsValue = "%identity"

pub impl FromJsAny for FileReader with from_js_any(value : JsAny) -> FileReader = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFileReader] FileReader::into(self : FileReader) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFileReader] FileReader::unsafe_into(self : FileReader) -> T = "%identity"

pub impl HasConstructor for FileReader with constructor_name() { "FileReader" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileReader + HasConstructor] FileReader::try_into(self : FileReader) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TFileReader for FileReader

pub impl TEventTarget for FileReader

pub fn FileReader::new() -> FileReader {
  file_reader_new_ffi()
}

pub const FILE_READER_EMPTY: UInt = 0

pub const FILE_READER_LOADING: UInt = 1

pub const FILE_READER_DONE: UInt = 2

pub(open) trait TFileReaderResult : TJsValue {}

pub impl TFileReaderResult for String

pub impl TFileReaderResult for ArrayBuffer

#external
pub type FileReaderResult

pub impl TJsValue for FileReaderResult with to_js(self: FileReaderResult) -> JsValue = "%identity"

pub impl FromJsAny for FileReaderResult with from_js_any(value : JsAny) -> FileReaderResult = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFileReaderResult + FromJsAny] FileReaderResult::into(self : FileReaderResult) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TFileReaderResult + FromJsAny] FileReaderResult::unsafe_into(self : FileReaderResult) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TFileReaderResult] FileReaderResult::from(value : T) -> FileReaderResult = "%identity"

pub impl TFileReaderResult for FileReaderResult

/// [FileReader](https://developer.mozilla.org/en-US/docs/Web/API/FileReader) interface.
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
  set_onloadstart(self : Self, onloadstart : (Event) -> JsValue) -> Unit = _
  onprogress(self : Self) -> EventHandler = _
  set_onprogress(self : Self, onprogress : (Event) -> JsValue) -> Unit = _
  onload(self : Self) -> EventHandler = _
  set_onload(self : Self, onload : (Event) -> JsValue) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onloadend(self : Self) -> EventHandler = _
  set_onloadend(self : Self, onloadend : (Event) -> JsValue) -> Unit = _
}

/// [FileReader.readAsArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsArrayBuffer)
impl TFileReader with read_as_array_buffer(self : Self, 
blob : &TBlob) -> Unit {
  file_reader_read_as_array_buffer_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

/// [FileReader.readAsBinaryString](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsBinaryString)
impl TFileReader with read_as_binary_string(self : Self, 
blob : &TBlob) -> Unit {
  file_reader_read_as_binary_string_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

/// [FileReader.readAsText](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsText)
impl TFileReader with read_as_text(self : Self, 
blob : &TBlob, 
encoding? : String) -> Unit {
  file_reader_read_as_text_ffi(TJsValue::to_js(self), TJsValue::to_js(blob), opt_to_js(encoding))
}

/// [FileReader.readAsDataURL](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readAsDataURL)
impl TFileReader with read_as_data_url(self : Self, 
blob : &TBlob) -> Unit {
  file_reader_read_as_data_url_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

/// [FileReader.abort](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/abort)
impl TFileReader with abort(self : Self) -> Unit {
  file_reader_abort_ffi(TJsValue::to_js(self))
}

/// [FileReader.readyState](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readyState)
impl TFileReader with ready_state(self : Self) -> UInt {
  file_reader_ready_state_ffi(TJsValue::to_js(self))
}

/// [FileReader.result](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/result)
impl TFileReader with result(self : Self) -> FileReaderResult {
  file_reader_result_ffi(TJsValue::to_js(self))
}

/// [FileReader.error](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/error)
impl TFileReader with error(self : Self) -> DOMException {
  file_reader_error_ffi(TJsValue::to_js(self))
}

/// [FileReader.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onloadstart)
impl TFileReader with onloadstart(self : Self) -> EventHandler {
  file_reader_onloadstart_ffi(TJsValue::to_js(self))
}

/// [FileReader.onloadstart](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onloadstart)
impl TFileReader with set_onloadstart(self : Self, 
onloadstart : (Event) -> JsValue) -> Unit {
  file_reader_set_onloadstart_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onloadstart)))
}

/// [FileReader.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onprogress)
impl TFileReader with onprogress(self : Self) -> EventHandler {
  file_reader_onprogress_ffi(TJsValue::to_js(self))
}

/// [FileReader.onprogress](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onprogress)
impl TFileReader with set_onprogress(self : Self, 
onprogress : (Event) -> JsValue) -> Unit {
  file_reader_set_onprogress_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onprogress)))
}

/// [FileReader.onload](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onload)
impl TFileReader with onload(self : Self) -> EventHandler {
  file_reader_onload_ffi(TJsValue::to_js(self))
}

/// [FileReader.onload](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onload)
impl TFileReader with set_onload(self : Self, 
onload : (Event) -> JsValue) -> Unit {
  file_reader_set_onload_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onload)))
}

/// [FileReader.onabort](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onabort)
impl TFileReader with onabort(self : Self) -> EventHandler {
  file_reader_onabort_ffi(TJsValue::to_js(self))
}

/// [FileReader.onabort](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onabort)
impl TFileReader with set_onabort(self : Self, 
onabort : (Event) -> JsValue) -> Unit {
  file_reader_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onabort)))
}

/// [FileReader.onerror](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onerror)
impl TFileReader with onerror(self : Self) -> EventHandler {
  file_reader_onerror_ffi(TJsValue::to_js(self))
}

/// [FileReader.onerror](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onerror)
impl TFileReader with set_onerror(self : Self, 
onerror : (Event) -> JsValue) -> Unit {
  file_reader_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onerror)))
}

/// [FileReader.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onloadend)
impl TFileReader with onloadend(self : Self) -> EventHandler {
  file_reader_onloadend_ffi(TJsValue::to_js(self))
}

/// [FileReader.onloadend](https://developer.mozilla.org/en-US/docs/Web/API/FileReader/onloadend)
impl TFileReader with set_onloadend(self : Self, 
onloadend : (Event) -> JsValue) -> Unit {
  file_reader_set_onloadend_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onloadend)))
}

#cfg(target="js")
extern "js" fn file_reader_new_ffi() -> FileReader = "() => new FileReader()"

#cfg(target="js")
extern "js" fn file_reader_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> Unit = "(obj, blob) => obj.readAsArrayBuffer(blob)"

#cfg(target="js")
extern "js" fn file_reader_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> Unit = "(obj, blob) => obj.readAsBinaryString(blob)"

#cfg(target="js")
extern "js" fn file_reader_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> Unit = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

#cfg(target="js")
extern "js" fn file_reader_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> Unit = "(obj, blob) => obj.readAsDataURL(blob)"

#cfg(target="js")
extern "js" fn file_reader_abort_ffi(obj: JsValue) -> Unit = "(obj) => obj.abort()"

#cfg(target="js")
extern "js" fn file_reader_ready_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn file_reader_ready_state_ffi(obj: JsValue) -> UInt {
  file_reader_ready_state_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_result_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.result"

///|
#cfg(target="js")
fn file_reader_result_ffi(obj: JsValue) -> FileReaderResult {
  file_reader_result_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_error_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.error"

///|
#cfg(target="js")
fn file_reader_error_ffi(obj: JsValue) -> DOMException {
  file_reader_error_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_onloadstart_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onloadstart"

///|
#cfg(target="js")
fn file_reader_onloadstart_ffi(obj: JsValue) -> EventHandler {
  file_reader_onloadstart_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "(obj, onloadstart) => { obj.onloadstart = onloadstart; }"

#cfg(target="js")
extern "js" fn file_reader_onprogress_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onprogress"

///|
#cfg(target="js")
fn file_reader_onprogress_ffi(obj: JsValue) -> EventHandler {
  file_reader_onprogress_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "(obj, onprogress) => { obj.onprogress = onprogress; }"

#cfg(target="js")
extern "js" fn file_reader_onload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onload"

///|
#cfg(target="js")
fn file_reader_onload_ffi(obj: JsValue) -> EventHandler {
  file_reader_onload_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "(obj, onload) => { obj.onload = onload; }"

#cfg(target="js")
extern "js" fn file_reader_onabort_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn file_reader_onabort_ffi(obj: JsValue) -> EventHandler {
  file_reader_onabort_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

#cfg(target="js")
extern "js" fn file_reader_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn file_reader_onerror_ffi(obj: JsValue) -> EventHandler {
  file_reader_onerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

#cfg(target="js")
extern "js" fn file_reader_onloadend_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onloadend"

///|
#cfg(target="js")
fn file_reader_onloadend_ffi(obj: JsValue) -> EventHandler {
  file_reader_onloadend_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_set_onloadend_ffi(obj: JsValue, onloadend: JsValue) -> Unit = "(obj, onloadend) => { obj.onloadend = onloadend; }"

#cfg(target="wasm-gc")
fn file_reader_new_ffi() -> FileReader = "webapi_FileReader" "new"

#cfg(target="wasm-gc")
fn file_reader_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> Unit = "webapi_FileReader" "readAsArrayBuffer"

#cfg(target="wasm-gc")
fn file_reader_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> Unit = "webapi_FileReader" "readAsBinaryString"

#cfg(target="wasm-gc")
fn file_reader_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> Unit = "webapi_FileReader" "readAsText"

#cfg(target="wasm-gc")
fn file_reader_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> Unit = "webapi_FileReader" "readAsDataURL"

#cfg(target="wasm-gc")
fn file_reader_abort_ffi(obj: JsValue) -> Unit = "webapi_FileReader" "abort"

#cfg(target="wasm-gc")
fn file_reader_ready_state_ffi(obj: JsValue) -> UInt = "webapi_FileReader" "get_readyState"

#cfg(target="wasm-gc")
fn file_reader_result_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_result"

///|
#cfg(target="wasm-gc")
fn file_reader_result_ffi(obj: JsValue) -> FileReaderResult {
  file_reader_result_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_error_ffi(obj: JsValue) -> DOMException = "webapi_FileReader" "get_error"

#cfg(target="wasm-gc")
fn file_reader_onloadstart_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onloadstart"

///|
#cfg(target="wasm-gc")
fn file_reader_onloadstart_ffi(obj: JsValue) -> EventHandler {
  file_reader_onloadstart_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onloadstart_ffi(obj: JsValue, onloadstart: JsValue) -> Unit = "webapi_FileReader" "set_onloadstart"

#cfg(target="wasm-gc")
fn file_reader_onprogress_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onprogress"

///|
#cfg(target="wasm-gc")
fn file_reader_onprogress_ffi(obj: JsValue) -> EventHandler {
  file_reader_onprogress_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onprogress_ffi(obj: JsValue, onprogress: JsValue) -> Unit = "webapi_FileReader" "set_onprogress"

#cfg(target="wasm-gc")
fn file_reader_onload_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onload"

///|
#cfg(target="wasm-gc")
fn file_reader_onload_ffi(obj: JsValue) -> EventHandler {
  file_reader_onload_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onload_ffi(obj: JsValue, onload: JsValue) -> Unit = "webapi_FileReader" "set_onload"

#cfg(target="wasm-gc")
fn file_reader_onabort_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onabort"

///|
#cfg(target="wasm-gc")
fn file_reader_onabort_ffi(obj: JsValue) -> EventHandler {
  file_reader_onabort_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "webapi_FileReader" "set_onabort"

#cfg(target="wasm-gc")
fn file_reader_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onerror"

///|
#cfg(target="wasm-gc")
fn file_reader_onerror_ffi(obj: JsValue) -> EventHandler {
  file_reader_onerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_FileReader" "set_onerror"

#cfg(target="wasm-gc")
fn file_reader_onloadend_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileReader" "get_onloadend"

///|
#cfg(target="wasm-gc")
fn file_reader_onloadend_ffi(obj: JsValue) -> EventHandler {
  file_reader_onloadend_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_set_onloadend_ffi(obj: JsValue, onloadend: JsValue) -> Unit = "webapi_FileReader" "set_onloadend"