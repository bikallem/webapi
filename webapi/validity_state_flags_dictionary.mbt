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

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn validity_state_flags_empty_ffi() -> ValidityStateFlags = "() => {}"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_value_missing_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.valueMissing"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_type_mismatch_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.typeMismatch"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_pattern_mismatch_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternMismatch"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_too_long_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tooLong"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_too_short_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tooShort"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_range_underflow_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rangeUnderflow"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_range_overflow_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rangeOverflow"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_step_mismatch_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.stepMismatch"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_bad_input_ffi(obj : JsValue) -> JsValue = "(obj) => obj.badInput"

///|
#cfg(target="js")
extern "js" fn validity_state_flags_get_custom_error_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customError"

///|
#cfg(target="wasm-gc")
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
#cfg(target="wasm-gc")
fn validity_state_flags_empty_ffi() -> ValidityStateFlags = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_value_missing_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_valueMissing"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_type_mismatch_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_typeMismatch"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_pattern_mismatch_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_patternMismatch"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_too_long_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_tooLong"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_too_short_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_tooShort"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_range_underflow_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_rangeUnderflow"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_range_overflow_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_rangeOverflow"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_step_mismatch_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_stepMismatch"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_bad_input_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_badInput"

///|
#cfg(target="wasm-gc")
fn validity_state_flags_get_custom_error_ffi(obj : JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_customError"
