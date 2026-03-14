// Do not edit. This file is generated.
// MoonBit type: FileSystemHandle
// Specifications: fs.idl, file-system-access.idl

/// [FileSystemHandle](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemHandle)
#external
pub type FileSystemHandle

pub impl TJsValue for FileSystemHandle with to_js(self: FileSystemHandle) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemHandle with from_js_any(value : JsAny) -> FileSystemHandle = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFileSystemHandle] FileSystemHandle::into(self : FileSystemHandle) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFileSystemHandle] FileSystemHandle::unsafe_into(self : FileSystemHandle) -> T = "%identity"

pub impl HasConstructor for FileSystemHandle with constructor_name() { "FileSystemHandle" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileSystemHandle + HasConstructor] FileSystemHandle::try_into(self : FileSystemHandle) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn file_system_handle_kind_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn file_system_handle_kind_ffi(obj: JsValue) -> FileSystemHandleKind {
  FileSystemHandleKind::from_unchecked(file_system_handle_kind_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn file_system_handle_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn file_system_handle_name_ffi(obj: JsValue) -> String {
  file_system_handle_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_system_handle_is_same_entry_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.isSameEntry(other)"

///|
#cfg(target="js")
fn file_system_handle_is_same_entry_ffi(obj: JsValue, other: JsValue) -> JsPromise[Bool] {
  file_system_handle_is_same_entry_ffi_js(obj, other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_system_handle_query_permission_ffi_js(obj: JsValue, descriptor: JsValue) -> JsValue = "(obj, descriptor) => obj.queryPermission(descriptor)"

///|
#cfg(target="js")
fn file_system_handle_query_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_query_permission_ffi_js(obj, descriptor).unsafe_cast()
}

#cfg(target="js")
extern "js" fn file_system_handle_request_permission_ffi_js(obj: JsValue, descriptor: JsValue) -> JsValue = "(obj, descriptor) => obj.requestPermission(descriptor)"

///|
#cfg(target="js")
fn file_system_handle_request_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_request_permission_ffi_js(obj, descriptor).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_system_handle_kind_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemHandle" "get_kind"

///|
#cfg(target="wasm-gc")
fn file_system_handle_kind_ffi(obj: JsValue) -> FileSystemHandleKind {
  FileSystemHandleKind::from_unchecked(jsvalue_to_string(file_system_handle_kind_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn file_system_handle_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemHandle" "get_name"

///|
#cfg(target="wasm-gc")
fn file_system_handle_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(file_system_handle_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn file_system_handle_is_same_entry_ffi_wasm(obj: JsValue, other: JsValue) -> JsValue = "webapi_FileSystemHandle" "isSameEntry"

///|
#cfg(target="wasm-gc")
fn file_system_handle_is_same_entry_ffi(obj: JsValue, other: JsValue) -> JsPromise[Bool] {
  file_system_handle_is_same_entry_ffi_wasm(obj, other).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_system_handle_query_permission_ffi_wasm(obj: JsValue, descriptor: JsValue) -> JsValue = "webapi_FileSystemHandle" "queryPermission"

///|
#cfg(target="wasm-gc")
fn file_system_handle_query_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_query_permission_ffi_wasm(obj, descriptor).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_system_handle_request_permission_ffi_wasm(obj: JsValue, descriptor: JsValue) -> JsValue = "webapi_FileSystemHandle" "requestPermission"

///|
#cfg(target="wasm-gc")
fn file_system_handle_request_permission_ffi(obj: JsValue, descriptor: JsValue) -> JsPromise[PermissionState] {
  file_system_handle_request_permission_ffi_wasm(obj, descriptor).unsafe_cast()
}