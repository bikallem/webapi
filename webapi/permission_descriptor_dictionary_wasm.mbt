///|
fn permission_descriptor_ffi(name : JsValue) -> PermissionDescriptor = "webapi_PermissionDescriptor" "new"

///|
fn permission_descriptor_empty_ffi() -> PermissionDescriptor = "webapi_Dictionary" "empty"

///|
fn permission_descriptor_get_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionDescriptor" "get_name"

///|
fn permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(permission_descriptor_get_name_ffi_wasm(obj))
}
