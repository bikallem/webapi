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
pub fn[T : TFileSystemWritableFileStream] FileSystemWritableFileStream::into(
  self : FileSystemWritableFileStream,
) -> T = "%identity"

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
