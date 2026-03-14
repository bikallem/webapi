// Do not edit. This file is generated.
// MoonBit type: FileReaderSync
// Specifications: FileAPI.idl

/// [FileReaderSync](https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync)
#external
pub type FileReaderSync

pub impl TJsValue for FileReaderSync with to_js(self: FileReaderSync) -> JsValue = "%identity"

pub impl FromJsAny for FileReaderSync with from_js_any(value : JsAny) -> FileReaderSync = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFileReaderSync] FileReaderSync::into(self : FileReaderSync) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFileReaderSync] FileReaderSync::unsafe_into(self : FileReaderSync) -> T = "%identity"

pub impl HasConstructor for FileReaderSync with constructor_name() { "FileReaderSync" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileReaderSync + HasConstructor] FileReaderSync::try_into(self : FileReaderSync) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn file_reader_sync_new_ffi() -> FileReaderSync = "() => new FileReaderSync()"

#cfg(target="js")
extern "js" fn file_reader_sync_read_as_array_buffer_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsArrayBuffer(blob)"

///|
#cfg(target="js")
fn file_reader_sync_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> ArrayBuffer {
  file_reader_sync_read_as_array_buffer_ffi_js(obj, blob).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_sync_read_as_binary_string_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsBinaryString(blob)"

///|
#cfg(target="js")
fn file_reader_sync_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> String {
  file_reader_sync_read_as_binary_string_ffi_js(obj, blob).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_sync_read_as_text_ffi_js(obj: JsValue, blob: JsValue, encoding: JsValue) -> JsValue = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

///|
#cfg(target="js")
fn file_reader_sync_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> String {
  file_reader_sync_read_as_text_ffi_js(obj, blob, encoding).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_reader_sync_read_as_data_url_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsDataURL(blob)"

///|
#cfg(target="js")
fn file_reader_sync_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> String {
  file_reader_sync_read_as_data_url_ffi_js(obj, blob).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_reader_sync_new_ffi() -> FileReaderSync = "webapi_FileReaderSync" "new"

#cfg(target="wasm-gc")
fn file_reader_sync_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> ArrayBuffer = "webapi_FileReaderSync" "readAsArrayBuffer"

#cfg(target="wasm-gc")
fn file_reader_sync_read_as_binary_string_ffi_wasm(obj: JsValue, blob: JsValue) -> JsValue = "webapi_FileReaderSync" "readAsBinaryString"

///|
#cfg(target="wasm-gc")
fn file_reader_sync_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> String {
  jsvalue_to_string(file_reader_sync_read_as_binary_string_ffi_wasm(obj, blob))
}

#cfg(target="wasm-gc")
fn file_reader_sync_read_as_text_ffi_wasm(obj: JsValue, blob: JsValue, encoding: JsValue) -> JsValue = "webapi_FileReaderSync" "readAsText"

///|
#cfg(target="wasm-gc")
fn file_reader_sync_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> String {
  jsvalue_to_string(file_reader_sync_read_as_text_ffi_wasm(obj, blob, encoding))
}

#cfg(target="wasm-gc")
fn file_reader_sync_read_as_data_url_ffi_wasm(obj: JsValue, blob: JsValue) -> JsValue = "webapi_FileReaderSync" "readAsDataURL"

///|
#cfg(target="wasm-gc")
fn file_reader_sync_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> String {
  jsvalue_to_string(file_reader_sync_read_as_data_url_ffi_wasm(obj, blob))
}