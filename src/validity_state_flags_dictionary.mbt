// Do not edit. This file is generated.
// MoonBit type: ValidityStateFlags
// Specifications: html.idl

///|
#external
pub type ValidityStateFlags

///|
pub impl TJsValue for ValidityStateFlags with to_js(self : ValidityStateFlags) -> JsValue = "%identity"

///|
extern "js" fn validity_state_flags_ffi(
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
) -> ValidityStateFlags =
  #|(valueMissing, typeMismatch, patternMismatch, tooLong, tooShort, rangeUnderflow, rangeOverflow, stepMismatch, badInput, customError) => {
  #|  const obj = {};
  #|  if (valueMissing !== undefined) obj.valueMissing = valueMissing;
  #|  if (typeMismatch !== undefined) obj.typeMismatch = typeMismatch;
  #|  if (patternMismatch !== undefined) obj.patternMismatch = patternMismatch;
  #|  if (tooLong !== undefined) obj.tooLong = tooLong;
  #|  if (tooShort !== undefined) obj.tooShort = tooShort;
  #|  if (rangeUnderflow !== undefined) obj.rangeUnderflow = rangeUnderflow;
  #|  if (rangeOverflow !== undefined) obj.rangeOverflow = rangeOverflow;
  #|  if (stepMismatch !== undefined) obj.stepMismatch = stepMismatch;
  #|  if (badInput !== undefined) obj.badInput = badInput;
  #|  if (customError !== undefined) obj.customError = customError;
  #|  return obj;
  #|}

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
extern "js" fn validity_state_flags_empty_ffi() -> ValidityStateFlags = "() => {}"

///|
pub fn ValidityStateFlags::empty() -> ValidityStateFlags {
  validity_state_flags_empty_ffi()
}
