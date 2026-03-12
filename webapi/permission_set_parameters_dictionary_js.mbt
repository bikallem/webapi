///|
extern "js" fn permission_set_parameters_ffi(
  descriptor : JsValue,
  state : JsValue,
) -> PermissionSetParameters =
  #|(descriptor, state) => {
  #|  const obj = {};
  #|  if (descriptor !== undefined) obj.descriptor = descriptor;
  #|  if (state !== undefined) obj.state = state;
  #|  return obj;
  #|}

///|
extern "js" fn permission_set_parameters_empty_ffi() -> PermissionSetParameters = "() => {}"

///|
extern "js" fn permission_set_parameters_get_descriptor_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.descriptor"

///|
fn permission_set_parameters_get_descriptor_ffi(obj : JsValue) -> JsValue {
  permission_set_parameters_get_descriptor_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn permission_set_parameters_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.state"

///|
fn permission_set_parameters_get_state_ffi(obj : JsValue) -> PermissionState {
  PermissionState::from_unchecked(
    permission_set_parameters_get_state_ffi_js(obj).unsafe_cast(),
  )
}
