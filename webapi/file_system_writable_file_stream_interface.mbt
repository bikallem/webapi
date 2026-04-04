// Do not edit. This file is generated.
// MoonBit type: FileSystemWritableFileStream
// Specifications: fs.idl

///|
/// [FileSystemWritableFileStream](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWritableFileStream)
#external
pub type FileSystemWritableFileStream

///|
pub impl TJsValue for FileSystemWritableFileStream with to_js(
  self : FileSystemWritableFileStream,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemWritableFileStream with from_js_any(
  value : JsAny,
) -> FileSystemWritableFileStream = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFileSystemWritableFileStream] FileSystemWritableFileStream::into(
  self : FileSystemWritableFileStream,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TFileSystemWritableFileStream] FileSystemWritableFileStream::unsafe_into(
  self : FileSystemWritableFileStream,
) -> T = "%identity"

///|
pub impl HasConstructor for FileSystemWritableFileStream with constructor_name() {
  "FileSystemWritableFileStream"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileSystemWritableFileStream + HasConstructor] FileSystemWritableFileStream::try_into(
  self : FileSystemWritableFileStream,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TFileSystemWritableFileStream for FileSystemWritableFileStream

///|
pub impl TWritableStream for FileSystemWritableFileStream

///|
/// [FileSystemWritableFileStream](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWritableFileStream) interface.
pub trait TFileSystemWritableFileStream: TWritableStream {
  write(self : Self, data : &TFileSystemWriteChunkType) -> JsPromise[JsValue] = _
  seek(self : Self, position : UInt64) -> JsPromise[JsValue] = _
  truncate(self : Self, size : UInt64) -> JsPromise[JsValue] = _
}

///|
/// [FileSystemWritableFileStream.write](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWritableFileStream/write)
impl TFileSystemWritableFileStream with write(
  self : Self,
  data : &TFileSystemWriteChunkType,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_write_ffi(
    TJsValue::to_js(self),
    data.to_js(),
  )
}

///|
/// [FileSystemWritableFileStream.seek](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWritableFileStream/seek)
impl TFileSystemWritableFileStream with seek(self : Self, position : UInt64) -> JsPromise[
  JsValue,
] {
  file_system_writable_file_stream_seek_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(position),
  )
}

///|
/// [FileSystemWritableFileStream.truncate](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemWritableFileStream/truncate)
impl TFileSystemWritableFileStream with truncate(self : Self, size : UInt64) -> JsPromise[
  JsValue,
] {
  file_system_writable_file_stream_truncate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(size),
  )
}

///|
#cfg(target="js")
extern "js" fn file_system_writable_file_stream_write_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.write(data)"

///|
#cfg(target="js")
fn file_system_writable_file_stream_write_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_write_ffi_js(obj, data).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_writable_file_stream_seek_ffi_js(
  obj : JsValue,
  position : JsValue,
) -> JsValue = "(obj, position) => obj.seek(position)"

///|
#cfg(target="js")
fn file_system_writable_file_stream_seek_ffi(
  obj : JsValue,
  position : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_seek_ffi_js(obj, position).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_writable_file_stream_truncate_ffi_js(
  obj : JsValue,
  size : JsValue,
) -> JsValue = "(obj, size) => obj.truncate(size)"

///|
#cfg(target="js")
fn file_system_writable_file_stream_truncate_ffi(
  obj : JsValue,
  size : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_truncate_ffi_js(obj, size).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_write_ffi_wasm(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "write"

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_write_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_write_ffi_wasm(obj, data).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_seek_ffi_wasm(
  obj : JsValue,
  position : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "seek"

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_seek_ffi(
  obj : JsValue,
  position : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_seek_ffi_wasm(obj, position).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_truncate_ffi_wasm(
  obj : JsValue,
  size : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "truncate"

///|
#cfg(target="wasm-gc")
fn file_system_writable_file_stream_truncate_ffi(
  obj : JsValue,
  size : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_truncate_ffi_wasm(obj, size).unsafe_cast()
}
