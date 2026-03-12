// Do not edit. This file is generated.
// MoonBit type: ValidityStateFlags
// Specifications: html.idl

///|
/// [ValidityStateFlags](https://developer.mozilla.org/en-US/docs/Web/API/ValidityStateFlags)
#external
pub type ValidityStateFlags

///|
pub impl TJsValue for ValidityStateFlags with to_js(self : ValidityStateFlags) -> JsValue = "%identity"

///|
pub impl FromJsAny for ValidityStateFlags with from_js_any(value : JsAny) -> ValidityStateFlags = "%identity"

///|
pub fn ValidityStateFlags::new(
  value_missing? : Bool,
  type_mismatch? : Bool,
  pattern_mismatch? : Bool,
  too_long? : Bool,
  too_short? : Bool,
  range_underflow? : Bool,
  range_overflow? : Bool,
  step_mismatch? : Bool,
  bad_input? : Bool,
  custom_error? : Bool,
) -> ValidityStateFlags {
  validity_state_flags_ffi(
    opt_to_js(value_missing),
    opt_to_js(type_mismatch),
    opt_to_js(pattern_mismatch),
    opt_to_js(too_long),
    opt_to_js(too_short),
    opt_to_js(range_underflow),
    opt_to_js(range_overflow),
    opt_to_js(step_mismatch),
    opt_to_js(bad_input),
    opt_to_js(custom_error),
  )
}

///|
pub fn ValidityStateFlags::empty() -> ValidityStateFlags {
  validity_state_flags_empty_ffi()
}

///|
pub fn ValidityStateFlags::value_missing(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_value_missing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::type_mismatch(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_type_mismatch_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::pattern_mismatch(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_pattern_mismatch_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::too_long(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_too_long_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::too_short(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_too_short_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::range_underflow(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_range_underflow_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::range_overflow(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_range_overflow_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::step_mismatch(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_step_mismatch_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::bad_input(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_bad_input_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ValidityStateFlags::custom_error(self : ValidityStateFlags) -> Bool? {
  validity_state_flags_get_custom_error_ffi(TJsValue::to_js(self)).to_option_prim()
}
