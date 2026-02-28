///|
fn permission_set_parameters_ffi(
  descriptor : JsValue,
  state : JsValue,
) -> PermissionSetParameters = "webapi_PermissionSetParameters" "new"

///|
fn permission_set_parameters_empty_ffi() -> PermissionSetParameters = "webapi_Dictionary" "empty"

///|
fn permission_set_parameters_get_descriptor_ffi(obj : JsValue) -> JsValue = "webapi_PermissionSetParameters" "get_descriptor"

///|
fn permission_set_parameters_get_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PermissionSetParameters" "get_state"

///|
fn permission_set_parameters_get_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    jsvalue_to_string(permission_set_parameters_get_state_ffi_wasm(obj)),
  )
}
