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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFileSystemFileHandle] FileSystemFileHandle::into(
  self : FileSystemFileHandle,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TFileSystemFileHandle] FileSystemFileHandle::unsafe_into(
  self : FileSystemFileHandle,
) -> T = "%identity"

///|
pub impl HasConstructor for FileSystemFileHandle with constructor_name() {
  "FileSystemFileHandle"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileSystemFileHandle + HasConstructor] FileSystemFileHandle::try_into(
  self : FileSystemFileHandle,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  options? : FileSystemCreateWritableOptions,
) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi(
    TJsValue::to_js(self),
    opt_to_js(options),
  )
}

///|
/// [FileSystemFileHandle.createSyncAccessHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileHandle/createSyncAccessHandle)
impl TFileSystemFileHandle with create_sync_access_handle(self : Self) -> JsPromise[
  FileSystemSyncAccessHandle,
] {
  file_system_file_handle_create_sync_access_handle_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn file_system_file_handle_get_file_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getFile()"

///|
#cfg(target="js")
fn file_system_file_handle_get_file_ffi(obj : JsValue) -> JsPromise[File] {
  file_system_file_handle_get_file_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_file_handle_create_writable_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.createWritable(options)"

///|
#cfg(target="js")
fn file_system_file_handle_create_writable_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_file_handle_create_sync_access_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createSyncAccessHandle()"

///|
#cfg(target="js")
fn file_system_file_handle_create_sync_access_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemSyncAccessHandle] {
  file_system_file_handle_create_sync_access_handle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_get_file_ffi_wasm(obj : JsValue) -> JsValue = "webapi_FileSystemFileHandle" "getFile"

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_get_file_ffi(obj : JsValue) -> JsPromise[File] {
  file_system_file_handle_get_file_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_create_writable_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_FileSystemFileHandle" "createWritable"

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_create_writable_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemWritableFileStream] {
  file_system_file_handle_create_writable_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_create_sync_access_handle_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_FileSystemFileHandle" "createSyncAccessHandle"

///|
#cfg(target="wasm-gc")
fn file_system_file_handle_create_sync_access_handle_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemSyncAccessHandle] {
  file_system_file_handle_create_sync_access_handle_ffi_wasm(obj).unsafe_cast()
}
