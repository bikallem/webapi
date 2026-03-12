fn file_system_handle_permission_descriptor_ffi(mode: JsValue) -> FileSystemHandlePermissionDescriptor = "webapi_FileSystemHandlePermissionDescriptor" "new"

fn file_system_handle_permission_descriptor_empty_ffi() -> FileSystemHandlePermissionDescriptor = "webapi_Dictionary" "empty"

fn file_system_handle_permission_descriptor_get_mode_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemHandlePermissionDescriptor" "get_mode"