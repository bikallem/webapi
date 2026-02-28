///|
fn permission_status_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_state"

///|
fn permission_status_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    jsvalue_to_string(permission_status_state_ffi_wasm(obj)),
  )
}

///|
fn permission_status_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_name"

///|
fn permission_status_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(permission_status_name_ffi_wasm(obj))
}

///|
fn permission_status_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionStatus" "get_onchange"

///|
fn permission_status_onchange_ffi(obj : JsValue) -> EventHandler {
  permission_status_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
fn permission_status_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "webapi_PermissionStatus" "set_onchange"
