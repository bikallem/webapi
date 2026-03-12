///|
fn clipboard_permission_descriptor_ffi(
  name : JsValue,
  allow_without_gesture : JsValue,
) -> ClipboardPermissionDescriptor = "webapi_ClipboardPermissionDescriptor" "new"

///|
fn clipboard_permission_descriptor_empty_ffi() -> ClipboardPermissionDescriptor = "webapi_Dictionary" "empty"

///|
fn clipboard_permission_descriptor_get_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ClipboardPermissionDescriptor" "get_name"

///|
fn clipboard_permission_descriptor_get_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(clipboard_permission_descriptor_get_name_ffi_wasm(obj))
}

///|
fn clipboard_permission_descriptor_get_allow_without_gesture_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ClipboardPermissionDescriptor" "get_allowWithoutGesture"
