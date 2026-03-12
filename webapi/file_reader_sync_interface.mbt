// Do not edit. This file is generated.
// MoonBit type: FileReaderSync
// Specifications: FileAPI.idl

/// [FileReaderSync](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync)
#external
pub type FileReaderSync

pub impl TJsValue for FileReaderSync with to_js(self: FileReaderSync) -> JsValue = "%identity"

pub impl FromJsAny for FileReaderSync with from_js_any(value : JsAny) -> FileReaderSync = "%identity"

pub fn[T: TFileReaderSync] FileReaderSync::into(self : FileReaderSync) -> T = "%identity"

pub impl TFileReaderSync for FileReaderSync

pub fn FileReaderSync::new() -> FileReaderSync {
  file_reader_sync_new_ffi()
}

/// [FileReaderSync](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync) interface.
pub trait TFileReaderSync: TJsValue {
  read_as_array_buffer(self : Self, blob : &TBlob) -> ArrayBuffer = _
  read_as_binary_string(self : Self, blob : &TBlob) -> String = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> String = _
  read_as_data_url(self : Self, blob : &TBlob) -> String = _
}

/// [FileReaderSync.readAsArrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync/readAsArrayBuffer)
impl TFileReaderSync with read_as_array_buffer(self : Self, 
blob : &TBlob) -> ArrayBuffer {
  file_reader_sync_read_as_array_buffer_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

/// [FileReaderSync.readAsBinaryString](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync/readAsBinaryString)
impl TFileReaderSync with read_as_binary_string(self : Self, 
blob : &TBlob) -> String {
  file_reader_sync_read_as_binary_string_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

/// [FileReaderSync.readAsText](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync/readAsText)
impl TFileReaderSync with read_as_text(self : Self, 
blob : &TBlob, 
encoding? : String) -> String {
  file_reader_sync_read_as_text_ffi(TJsValue::to_js(self), TJsValue::to_js(blob), opt_to_js(encoding))
}

/// [FileReaderSync.readAsDataURL](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync/readAsDataURL)
impl TFileReaderSync with read_as_data_url(self : Self, 
blob : &TBlob) -> String {
  file_reader_sync_read_as_data_url_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}