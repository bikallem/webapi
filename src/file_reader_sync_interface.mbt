// Do not edit. This file is generated.
// MoonBit type: FileReaderSync
// Specifications: FileAPI.idl

///|
#external
pub type FileReaderSync

///|
pub impl TJsValue for FileReaderSync with to_js(self : FileReaderSync) -> JsValue = "%identity"

///|
pub fn[T : TFileReaderSync] FileReaderSync::into(self : FileReaderSync) -> T = "%identity"

///|
pub impl TFileReaderSync for FileReaderSync

///|
extern "js" fn file_reader_sync_new_ffi() -> FileReaderSync = "() => new FileReaderSync()"

///|
pub fn FileReaderSync::new() -> FileReaderSync {
  file_reader_sync_new_ffi()
}

///|
pub trait TFileReaderSync: TJsValue {
  read_as_array_buffer(self : Self, blob : &TBlob) -> ArrayBuffer = _
  read_as_binary_string(self : Self, blob : &TBlob) -> String = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> String = _
  read_as_data_url(self : Self, blob : &TBlob) -> String = _
}

///|
extern "js" fn file_reader_sync_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> ArrayBuffer = "(obj, blob) => obj.readAsArrayBuffer(blob)"

///|
impl TFileReaderSync with read_as_array_buffer(self : Self, blob : &TBlob) -> ArrayBuffer {
  file_reader_sync_read_as_array_buffer_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_sync_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> String = "(obj, blob) => obj.readAsBinaryString(blob)"

///|
impl TFileReaderSync with read_as_binary_string(self : Self, blob : &TBlob) -> String {
  file_reader_sync_read_as_binary_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_sync_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> String = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

///|
impl TFileReaderSync with read_as_text(
  self : Self,
  blob : &TBlob,
  encoding? : String,
) -> String {
  file_reader_sync_read_as_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
    opt_to_js(encoding),
  )
}

///|
extern "js" fn file_reader_sync_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> String = "(obj, blob) => obj.readAsDataURL(blob)"

///|
impl TFileReaderSync with read_as_data_url(self : Self, blob : &TBlob) -> String {
  file_reader_sync_read_as_data_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}
