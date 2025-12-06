// Auto-generated MoonBit bindings for FileReaderSync

// Do not edit manually

///|
#external
pub type FileReaderSync

///|
pub trait TFileReaderSync: TJsValue {
  read_as_array_buffer(self : Self, blob : &TBlob) -> ArrayBuffer = _
  read_as_binary_string(self : Self, blob : &TBlob) -> String = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> String = _
  read_as_data_url(self : Self, blob : &TBlob) -> String = _
}

///|
pub impl TFileReaderSync for FileReaderSync

///|
pub impl TJsValue for FileReaderSync with to_js(self : FileReaderSync) -> JsValue = "%identity"

///|
pub fn FileReaderSync::null() -> FileReaderSync {
  JsValue::null()
}

///|
pub fn FileReaderSync::new() -> FileReaderSync = "webapi_FileReaderSync" "new"

///|
fn file_reader_sync_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsArrayBuffer"

///|
impl TFileReaderSync with read_as_array_buffer(self : Self, blob : &TBlob) -> ArrayBuffer {
  file_reader_sync_read_as_array_buffer_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  ).unsafe_cast()
}

///|
fn file_reader_sync_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsBinaryString"

///|
impl TFileReaderSync with read_as_binary_string(self : Self, blob : &TBlob) -> String {
  file_reader_sync_read_as_binary_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  ).unsafe_cast()
}

///|
fn file_reader_sync_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsText"

///|
impl TFileReaderSync with read_as_text(
  self : Self,
  blob : &TBlob,
  encoding? : String,
) -> String {
  let encoding_js = opt_to_js(encoding)
  file_reader_sync_read_as_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
    encoding_js,
  ).unsafe_cast()
}

///|
fn file_reader_sync_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsDataURL"

///|
impl TFileReaderSync with read_as_data_url(self : Self, blob : &TBlob) -> String {
  file_reader_sync_read_as_data_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  ).unsafe_cast()
}
