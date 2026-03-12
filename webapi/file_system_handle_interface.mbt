// Do not edit. This file is generated.
// MoonBit type: FileSystemHandle
// Specifications: fs.idl, file-system-access.idl

/// [FileSystemHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle)
#external
pub type FileSystemHandle

pub impl TJsValue for FileSystemHandle with to_js(self: FileSystemHandle) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemHandle with from_js_any(value : JsAny) -> FileSystemHandle = "%identity"

pub fn[T: TFileSystemHandle] FileSystemHandle::into(self : FileSystemHandle) -> T = "%identity"

pub impl TFileSystemHandle for FileSystemHandle

/// [FileSystemHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle) interface.
pub trait TFileSystemHandle: TJsValue {
  kind(self : Self) -> FileSystemHandleKind = _
  name(self : Self) -> String = _
  is_same_entry(self : Self, other : &TFileSystemHandle) -> JsPromise[Bool] = _
  query_permission(self : Self, descriptor? : FileSystemHandlePermissionDescriptor) -> JsPromise[PermissionState] = _
  request_permission(self : Self, descriptor? : FileSystemHandlePermissionDescriptor) -> JsPromise[PermissionState] = _
}

/// [FileSystemHandle.kind](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle/kind)
impl TFileSystemHandle with kind(self : Self) -> FileSystemHandleKind {
  file_system_handle_kind_ffi(TJsValue::to_js(self))
}

/// [FileSystemHandle.name](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle/name)
impl TFileSystemHandle with name(self : Self) -> String {
  file_system_handle_name_ffi(TJsValue::to_js(self))
}

/// [FileSystemHandle.isSameEntry](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle/isSameEntry)
impl TFileSystemHandle with is_same_entry(self : Self, 
other : &TFileSystemHandle) -> JsPromise[Bool] {
  file_system_handle_is_same_entry_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

/// [FileSystemHandle.queryPermission](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle/queryPermission)
impl TFileSystemHandle with query_permission(self : Self, 
descriptor? : FileSystemHandlePermissionDescriptor) -> JsPromise[PermissionState] {
  file_system_handle_query_permission_ffi(TJsValue::to_js(self), opt_to_js(descriptor))
}

/// [FileSystemHandle.requestPermission](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle/requestPermission)
impl TFileSystemHandle with request_permission(self : Self, 
descriptor? : FileSystemHandlePermissionDescriptor) -> JsPromise[PermissionState] {
  file_system_handle_request_permission_ffi(TJsValue::to_js(self), opt_to_js(descriptor))
}