// Do not edit. This file is generated.
// MoonBit type: ValidityStateFlags
// Specifications: html.idl

/// [ValidityStateFlags](https://developer.mozilla.org/en-US/docs/Web/API/ValidityStateFlags)
#external
pub type ValidityStateFlags

pub impl TJsValue for ValidityStateFlags with to_js(self: ValidityStateFlags) -> JsValue = "%identity"

pub fn ValidityStateFlags::new(value_missing? : Bool = false, 
type_mismatch? : Bool = false, 
pattern_mismatch? : Bool = false, 
too_long? : Bool = false, 
too_short? : Bool = false, 
range_underflow? : Bool = false, 
range_overflow? : Bool = false, 
step_mismatch? : Bool = false, 
bad_input? : Bool = false, 
custom_error? : Bool = false) -> ValidityStateFlags {
  validity_state_flags_ffi(TJsValue::to_js(value_missing), TJsValue::to_js(type_mismatch), TJsValue::to_js(pattern_mismatch), TJsValue::to_js(too_long), TJsValue::to_js(too_short), TJsValue::to_js(range_underflow), TJsValue::to_js(range_overflow), TJsValue::to_js(step_mismatch), TJsValue::to_js(bad_input), TJsValue::to_js(custom_error))
}

pub fn ValidityStateFlags::empty() -> ValidityStateFlags { validity_state_flags_empty_ffi() }