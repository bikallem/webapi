fn file_system_permission_descriptor_ffi(name: JsValue, handle: JsValue, mode: JsValue) -> FileSystemPermissionDescriptor = "webapi_FileSystemPermissionDescriptor" "new"

fn file_system_permission_descriptor_empty_ffi() -> FileSystemPermissionDescriptor = "webapi_Dictionary" "empty"

fn file_system_permission_descriptor_get_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_FileSystemPermissionDescriptor" "get_name"

///|
fn file_system_permission_descriptor_get_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(file_system_permission_descriptor_get_name_ffi_wasm(obj))
}

fn file_system_permission_descriptor_get_handle_ffi(obj: JsValue) -> FileSystemHandle = "webapi_FileSystemPermissionDescriptor" "get_handle"

fn file_system_permission_descriptor_get_mode_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemPermissionDescriptor" "get_mode"