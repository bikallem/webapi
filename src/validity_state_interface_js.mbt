///|
extern "js" fn validity_state_value_missing_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.valueMissing"

///|
fn validity_state_value_missing_ffi(obj : JsValue) -> Bool {
  validity_state_value_missing_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_type_mismatch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.typeMismatch"

///|
fn validity_state_type_mismatch_ffi(obj : JsValue) -> Bool {
  validity_state_type_mismatch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_pattern_mismatch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.patternMismatch"

///|
fn validity_state_pattern_mismatch_ffi(obj : JsValue) -> Bool {
  validity_state_pattern_mismatch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_too_long_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tooLong"

///|
fn validity_state_too_long_ffi(obj : JsValue) -> Bool {
  validity_state_too_long_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_too_short_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tooShort"

///|
fn validity_state_too_short_ffi(obj : JsValue) -> Bool {
  validity_state_too_short_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_range_underflow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rangeUnderflow"

///|
fn validity_state_range_underflow_ffi(obj : JsValue) -> Bool {
  validity_state_range_underflow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_range_overflow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rangeOverflow"

///|
fn validity_state_range_overflow_ffi(obj : JsValue) -> Bool {
  validity_state_range_overflow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_step_mismatch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.stepMismatch"

///|
fn validity_state_step_mismatch_ffi(obj : JsValue) -> Bool {
  validity_state_step_mismatch_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_bad_input_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.badInput"

///|
fn validity_state_bad_input_ffi(obj : JsValue) -> Bool {
  validity_state_bad_input_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_custom_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.customError"

///|
fn validity_state_custom_error_ffi(obj : JsValue) -> Bool {
  validity_state_custom_error_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn validity_state_valid_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.valid"

///|
fn validity_state_valid_ffi(obj : JsValue) -> Bool {
  validity_state_valid_ffi_js(obj).unsafe_cast()
}
