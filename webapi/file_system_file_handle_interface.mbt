// Do not edit. This file is generated.
// MoonBit type: FileSystemFileHandle
// Specifications: fs.idl

///|
/// [FileSystemFileHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle)
#external
pub type FileSystemFileHandle

///|
pub impl TJsValue for FileSystemFileHandle with to_js(
  self : FileSystemFileHandle,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemFileHandle with from_js_any(value : JsAny) -> FileSystemFileHandle = "%identity"

///|
pub fn[T : TFileSystemFileHandle] FileSystemFileHandle::into(
  self : FileSystemFileHandle,
) -> T = "%identity"

///|
pub impl TFileSystemFileHandle for FileSystemFileHandle

///|
pub impl TFileSystemHandle for FileSystemFileHandle

///|
/// [FileSystemFileHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle) interface.
pub trait TFileSystemFileHandle: TFileSystemHandle {
  get_file(self : Self) -> JsPromise[File] = _
  create_writable(self : Self, options? : FileSystemCreateWritableOptions) -> JsPromise[
    FileSystemWritableFileStream,
  ] = _
  create_sync_access_handle(self : Self) -> JsPromise[
    FileSystemSyncAccessHandle,
  ] = _
}

///|
/// [FileSystemFileHandle.getFile](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle/getFile)
impl TFileSystemFileHandle with get_file(self : Self) -> JsPromise[File] {
  file_system_file_handle_get_file_ffi(TJsValue::to_js(self))
}

///|
/// [FileSystemFileHandle.createWritable](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle/createWritable)
impl TFileSystemFileHandle with create_writable(
  self : Self,
  options? : FileSystemCreateWritableOptions = FileSystemCreateWritableOptions::empty(),
) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
/// [FileSystemFileHandle.createSyncAccessHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle/createSyncAccessHandle)
impl TFileSystemFileHandle with create_sync_access_handle(self : Self) -> JsPromise[
  FileSystemSyncAccessHandle,
] {
  file_system_file_handle_create_sync_access_handle_ffi(TJsValue::to_js(self))
}
