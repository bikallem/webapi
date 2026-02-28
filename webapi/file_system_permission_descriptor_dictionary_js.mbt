///|
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
extern "js" fn file_system_permission_descriptor_empty_ffi() -> FileSystemPermissionDescriptor = "() => {}"

///|
extern "js" fn file_system_permission_descriptor_get_name_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.name"

///|
fn file_system_permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  file_system_permission_descriptor_get_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_system_permission_descriptor_get_handle_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.handle"

///|
fn file_system_permission_descriptor_get_handle_ffi(
  obj : JsValue,
) -> FileSystemHandle {
  file_system_permission_descriptor_get_handle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_system_permission_descriptor_get_mode_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.mode"
