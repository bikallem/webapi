// Do not edit. This file is generated.
// MoonBit type: FileSystemDirectoryHandle
// Specifications: fs.idl

///|
/// [FileSystemDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle)
#external
pub type FileSystemDirectoryHandle

///|
pub impl TJsValue for FileSystemDirectoryHandle with to_js(
  self : FileSystemDirectoryHandle,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemDirectoryHandle with from_js_any(value : JsAny) -> FileSystemDirectoryHandle = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFileSystemDirectoryHandle] FileSystemDirectoryHandle::into(
  self : FileSystemDirectoryHandle,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TFileSystemDirectoryHandle] FileSystemDirectoryHandle::unsafe_into(
  self : FileSystemDirectoryHandle,
) -> T = "%identity"

///|
pub impl HasConstructor for FileSystemDirectoryHandle with constructor_name() {
  "FileSystemDirectoryHandle"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileSystemDirectoryHandle + HasConstructor] FileSystemDirectoryHandle::try_into(
  self : FileSystemDirectoryHandle,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TFileSystemDirectoryHandle for FileSystemDirectoryHandle

///|
pub impl TFileSystemHandle for FileSystemDirectoryHandle

///|
/// [FileSystemDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle) interface.
pub trait TFileSystemDirectoryHandle: TFileSystemHandle {
  get_file_handle(
    self : Self,
    name : String,
    options? : FileSystemGetFileOptions,
  ) -> JsPromise[FileSystemFileHandle] = _
  get_directory_handle(
    self : Self,
    name : String,
    options? : FileSystemGetDirectoryOptions,
  ) -> JsPromise[FileSystemDirectoryHandle] = _
  remove_entry(self : Self, name : String, options? : FileSystemRemoveOptions) -> JsPromise[
    JsValue,
  ] = _
  resolve(self : Self, possible_descendant : &TFileSystemHandle) -> JsPromise[
    Array[String],
  ] = _
}

///|
/// [FileSystemDirectoryHandle.getFileHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
impl TFileSystemDirectoryHandle with get_file_handle(
  self : Self,
  name : String,
  options? : FileSystemGetFileOptions,
) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(options),
  )
}

///|
/// [FileSystemDirectoryHandle.getDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
impl TFileSystemDirectoryHandle with get_directory_handle(
  self : Self,
  name : String,
  options? : FileSystemGetDirectoryOptions,
) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(options),
  )
}

///|
/// [FileSystemDirectoryHandle.removeEntry](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
impl TFileSystemDirectoryHandle with remove_entry(
  self : Self,
  name : String,
  options? : FileSystemRemoveOptions,
) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(options),
  )
}

///|
/// [FileSystemDirectoryHandle.resolve](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/resolve)
impl TFileSystemDirectoryHandle with resolve(
  self : Self,
  possible_descendant : &TFileSystemHandle,
) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(possible_descendant),
  )
}

///|
#cfg(target="js")
extern "js" fn file_system_directory_handle_get_file_handle_ffi_js(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, options) => obj.getFileHandle(name, options)"

///|
#cfg(target="js")
fn file_system_directory_handle_get_file_handle_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi_js(obj, name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_directory_handle_get_directory_handle_ffi_js(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, options) => obj.getDirectoryHandle(name, options)"

///|
#cfg(target="js")
fn file_system_directory_handle_get_directory_handle_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi_js(obj, name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_directory_handle_remove_entry_ffi_js(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, options) => obj.removeEntry(name, options)"

///|
#cfg(target="js")
fn file_system_directory_handle_remove_entry_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi_js(obj, name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_directory_handle_resolve_ffi_js(
  obj : JsValue,
  possible_descendant : JsValue,
) -> JsValue = "(obj, possible_descendant) => obj.resolve(possible_descendant)"

///|
#cfg(target="js")
fn file_system_directory_handle_resolve_ffi(
  obj : JsValue,
  possible_descendant : JsValue,
) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi_js(obj, possible_descendant).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_get_file_handle_ffi_wasm(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "webapi_FileSystemDirectoryHandle" "getFileHandle"

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_get_file_handle_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi_wasm(obj, name, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_get_directory_handle_ffi_wasm(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "webapi_FileSystemDirectoryHandle" "getDirectoryHandle"

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_get_directory_handle_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi_wasm(obj, name, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_remove_entry_ffi_wasm(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "webapi_FileSystemDirectoryHandle" "removeEntry"

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_remove_entry_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi_wasm(obj, name, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_resolve_ffi_wasm(
  obj : JsValue,
  possible_descendant : JsValue,
) -> JsValue = "webapi_FileSystemDirectoryHandle" "resolve"

///|
#cfg(target="wasm-gc")
fn file_system_directory_handle_resolve_ffi(
  obj : JsValue,
  possible_descendant : JsValue,
) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi_wasm(obj, possible_descendant).unsafe_cast()
}
