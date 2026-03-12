extern "js" fn file_system_handle_permission_descriptor_ffi(mode: JsValue) -> FileSystemHandlePermissionDescriptor = 
#|(mode) => {
#|  const obj = {};
#|  if (mode !== undefined) obj.mode = mode;
#|  return obj;
#|}

extern "js" fn file_system_handle_permission_descriptor_empty_ffi() -> FileSystemHandlePermissionDescriptor = "() => {}"

extern "js" fn file_system_handle_permission_descriptor_get_mode_ffi(obj: JsValue) -> JsValue = "(obj) => obj.mode"