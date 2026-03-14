// Do not edit. This file is generated.
// MoonBit type: PermissionSetParameters
// Specifications: permissions.idl

/// [PermissionSetParameters](https://developer.mozilla.org/en-US/docs/Web/API/PermissionSetParameters)
#external
pub type PermissionSetParameters

pub impl TJsValue for PermissionSetParameters with to_js(self: PermissionSetParameters) -> JsValue = "%identity"

pub impl FromJsAny for PermissionSetParameters with from_js_any(value : JsAny) -> PermissionSetParameters = "%identity"

pub fn PermissionSetParameters::new(descriptor : JsValue, 
state : PermissionState) -> PermissionSetParameters {
  permission_set_parameters_ffi(TJsValue::to_js(descriptor), TJsValue::to_js(state))
}

pub fn PermissionSetParameters::empty() -> PermissionSetParameters { permission_set_parameters_empty_ffi() }

pub fn PermissionSetParameters::descriptor(self : PermissionSetParameters) -> JsValue {
  permission_set_parameters_get_descriptor_ffi(TJsValue::to_js(self))
}

pub fn PermissionSetParameters::state(self : PermissionSetParameters) -> PermissionState {
  permission_set_parameters_get_state_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn permission_set_parameters_ffi(descriptor: JsValue, state: JsValue) -> PermissionSetParameters = 
#|(descriptor, state) => {
#|  const obj = {};
#|  if (descriptor !== undefined) obj.descriptor = descriptor;
#|  if (state !== undefined) obj.state = state;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn permission_set_parameters_empty_ffi() -> PermissionSetParameters = "() => {}"

#cfg(target="js")
extern "js" fn permission_set_parameters_get_descriptor_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.descriptor"

///|
#cfg(target="js")
fn permission_set_parameters_get_descriptor_ffi(obj: JsValue) -> JsValue {
  permission_set_parameters_get_descriptor_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn permission_set_parameters_get_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
fn permission_set_parameters_get_state_ffi(obj: JsValue) -> PermissionState {
  PermissionState::from_unchecked(permission_set_parameters_get_state_ffi_js(obj).unsafe_cast())
}

#cfg(target="wasm-gc")
fn permission_set_parameters_ffi(descriptor: JsValue, state: JsValue) -> PermissionSetParameters = "webapi_PermissionSetParameters" "new"

#cfg(target="wasm-gc")
fn permission_set_parameters_empty_ffi() -> PermissionSetParameters = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn permission_set_parameters_get_descriptor_ffi(obj: JsValue) -> JsValue = "webapi_PermissionSetParameters" "get_descriptor"

#cfg(target="wasm-gc")
fn permission_set_parameters_get_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PermissionSetParameters" "get_state"

///|
#cfg(target="wasm-gc")
fn permission_set_parameters_get_state_ffi(obj: JsValue) -> PermissionState {
  PermissionState::from_unchecked(jsvalue_to_string(permission_set_parameters_get_state_ffi_wasm(obj)))
}