// Do not edit. This file is generated.
// MoonBit type: PermissionSetParameters
// Specifications: permissions.idl

///|
/// [PermissionSetParameters](https://developer.mozilla.org/en-US/docs/Web/API/PermissionSetParameters)
#external
pub type PermissionSetParameters

///|
pub impl TJsValue for PermissionSetParameters with to_js(
  self : PermissionSetParameters,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PermissionSetParameters with from_js_any(value : JsAny) -> PermissionSetParameters = "%identity"

///|
pub fn PermissionSetParameters::new(
  descriptor : JsValue,
  state : PermissionState,
) -> PermissionSetParameters {
  permission_set_parameters_ffi(
    TJsValue::to_js(descriptor),
    TJsValue::to_js(state),
  )
}

///|
pub fn PermissionSetParameters::empty() -> PermissionSetParameters {
  permission_set_parameters_empty_ffi()
}

///|
pub fn PermissionSetParameters::descriptor(
  self : PermissionSetParameters,
) -> JsValue {
  permission_set_parameters_get_descriptor_ffi(TJsValue::to_js(self))
}

///|
pub fn PermissionSetParameters::state(
  self : PermissionSetParameters,
) -> PermissionState {
  permission_set_parameters_get_state_ffi(TJsValue::to_js(self))
}
