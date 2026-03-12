// Do not edit. This file is generated.
// MoonBit type: FileSystemDirectoryHandle
// Specifications: fs.idl

/// [FileSystemDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle)
#external
pub type FileSystemDirectoryHandle

pub impl TJsValue for FileSystemDirectoryHandle with to_js(self: FileSystemDirectoryHandle) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemDirectoryHandle with from_js_any(value : JsAny) -> FileSystemDirectoryHandle = "%identity"

pub fn[T: TFileSystemDirectoryHandle] FileSystemDirectoryHandle::into(self : FileSystemDirectoryHandle) -> T = "%identity"

pub impl TFileSystemDirectoryHandle for FileSystemDirectoryHandle

pub impl TFileSystemHandle for FileSystemDirectoryHandle

/// [FileSystemDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle) interface.
pub trait TFileSystemDirectoryHandle: TFileSystemHandle {
  get_file_handle(self : Self, name : String, options? : FileSystemGetFileOptions) -> JsPromise[FileSystemFileHandle] = _
  get_directory_handle(self : Self, name : String, options? : FileSystemGetDirectoryOptions) -> JsPromise[FileSystemDirectoryHandle] = _
  remove_entry(self : Self, name : String, options? : FileSystemRemoveOptions) -> JsPromise[JsValue] = _
  resolve(self : Self, possible_descendant : &TFileSystemHandle) -> JsPromise[Array[String]] = _
}

/// [FileSystemDirectoryHandle.getFileHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
impl TFileSystemDirectoryHandle with get_file_handle(self : Self, 
name : String, 
options? : FileSystemGetFileOptions) -> JsPromise[FileSystemFileHandle] {
  file_system_directory_handle_get_file_handle_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(options))
}

/// [FileSystemDirectoryHandle.getDirectoryHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
impl TFileSystemDirectoryHandle with get_directory_handle(self : Self, 
name : String, 
options? : FileSystemGetDirectoryOptions) -> JsPromise[FileSystemDirectoryHandle] {
  file_system_directory_handle_get_directory_handle_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(options))
}

/// [FileSystemDirectoryHandle.removeEntry](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
impl TFileSystemDirectoryHandle with remove_entry(self : Self, 
name : String, 
options? : FileSystemRemoveOptions) -> JsPromise[JsValue] {
  file_system_directory_handle_remove_entry_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(options))
}

/// [FileSystemDirectoryHandle.resolve](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryHandle/resolve)
impl TFileSystemDirectoryHandle with resolve(self : Self, 
possible_descendant : &TFileSystemHandle) -> JsPromise[Array[String]] {
  file_system_directory_handle_resolve_ffi(TJsValue::to_js(self), TJsValue::to_js(possible_descendant))
}