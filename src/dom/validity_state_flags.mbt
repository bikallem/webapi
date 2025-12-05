// Auto-generated MoonBit bindings for ValidityStateFlags dictionary

// Do not edit manually

///|
#external
pub type ValidityStateFlags

///|
pub impl TJsValue for ValidityStateFlags with to_js(self : ValidityStateFlags) -> JsValue = "%identity"

///|
fn validity_state_flags_ffi(
  value_missing : JsValue,
  type_mismatch : JsValue,
  pattern_mismatch : JsValue,
  too_long : JsValue,
  too_short : JsValue,
  range_underflow : JsValue,
  range_overflow : JsValue,
  step_mismatch : JsValue,
  bad_input : JsValue,
  custom_error : JsValue,
) -> ValidityStateFlags = "webapi_ValidityStateFlags" "new"

///|
pub fn ValidityStateFlags::new(
  value_missing? : Bool = false,
  type_mismatch? : Bool = false,
  pattern_mismatch? : Bool = false,
  too_long? : Bool = false,
  too_short? : Bool = false,
  range_underflow? : Bool = false,
  range_overflow? : Bool = false,
  step_mismatch? : Bool = false,
  bad_input? : Bool = false,
  custom_error? : Bool = false,
) -> ValidityStateFlags {
  validity_state_flags_ffi(
    TJsValue::to_js(value_missing),
    TJsValue::to_js(type_mismatch),
    TJsValue::to_js(pattern_mismatch),
    TJsValue::to_js(too_long),
    TJsValue::to_js(too_short),
    TJsValue::to_js(range_underflow),
    TJsValue::to_js(range_overflow),
    TJsValue::to_js(step_mismatch),
    TJsValue::to_js(bad_input),
    TJsValue::to_js(custom_error),
  )
}

///|
pub fn ValidityStateFlags::empty() -> ValidityStateFlags = "webapi_Dictionary" "empty"
