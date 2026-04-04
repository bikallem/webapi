// Do not edit. This file is generated.
// MoonBit type: FileSystemPermissionDescriptor
// Specifications: file-system-access.idl, permissions.idl

///|
/// [FileSystemPermissionDescriptor](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemPermissionDescriptor)
#external
pub type FileSystemPermissionDescriptor

///|
pub impl TJsValue for FileSystemPermissionDescriptor with to_js(
  self : FileSystemPermissionDescriptor,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemPermissionDescriptor with from_js_any(
  value : JsAny,
) -> FileSystemPermissionDescriptor = "%identity"

///|
pub fn FileSystemPermissionDescriptor::new(
  name : String,
  handle : &TFileSystemHandle,
  mode? : FileSystemPermissionMode,
) -> FileSystemPermissionDescriptor {
  file_system_permission_descriptor_ffi(
    TJsValue::to_js(name),
    TJsValue::to_js(handle),
    opt_to_js(mode),
  )
}

///|
pub fn FileSystemPermissionDescriptor::empty() -> FileSystemPermissionDescriptor {
  file_system_permission_descriptor_empty_ffi()
}

///|
pub fn FileSystemPermissionDescriptor::name(
  self : FileSystemPermissionDescriptor,
) -> String {
  file_system_permission_descriptor_get_name_ffi(TJsValue::to_js(self))
}

///|
pub fn FileSystemPermissionDescriptor::handle(
  self : FileSystemPermissionDescriptor,
) -> FileSystemHandle {
  file_system_permission_descriptor_get_handle_ffi(TJsValue::to_js(self))
}

///|
pub fn FileSystemPermissionDescriptor::mode(
  self : FileSystemPermissionDescriptor,
) -> FileSystemPermissionMode? {
  file_system_permission_descriptor_get_mode_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn file_system_permission_descriptor_ffi(
  name : JsValue,
  handle : JsValue,
  mode : JsValue,
) -> FileSystemPermissionDescriptor =
  #|(name, handle, mode) => {
  #|  const obj = {};
  #|  if (name !== undefined) obj.name = name;
  #|  if (handle !== undefined) obj.handle = handle;
  #|  if (mode !== undefined) obj.mode = mode;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn file_system_permission_descriptor_empty_ffi() -> FileSystemPermissionDescriptor = "() => {}"

///|
#cfg(target="js")
extern "js" fn file_system_permission_descriptor_get_name_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn file_system_permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  file_system_permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_permission_descriptor_get_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.handle"

///|
#cfg(target="js")
fn file_system_permission_descriptor_get_handle_ffi(
  obj : JsValue,
) -> FileSystemHandle {
  file_system_permission_descriptor_get_handle_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn file_system_permission_descriptor_get_mode_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_ffi(
  name : JsValue,
  handle : JsValue,
  mode : JsValue,
) -> FileSystemPermissionDescriptor = "webapi_FileSystemPermissionDescriptor" "new"

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_empty_ffi() -> FileSystemPermissionDescriptor = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_get_name_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_FileSystemPermissionDescriptor" "get_name"

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(file_system_permission_descriptor_get_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_get_handle_ffi(
  obj : JsValue,
) -> FileSystemHandle = "webapi_FileSystemPermissionDescriptor" "get_handle"

///|
#cfg(target="wasm-gc")
fn file_system_permission_descriptor_get_mode_ffi(obj : JsValue) -> JsValue = "webapi_FileSystemPermissionDescriptor" "get_mode"
