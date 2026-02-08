///|
extern "js" fn validity_state_value_missing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.valueMissing"

///|
extern "js" fn validity_state_type_mismatch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.typeMismatch"

///|
extern "js" fn validity_state_pattern_mismatch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.patternMismatch"

///|
extern "js" fn validity_state_too_long_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tooLong"

///|
extern "js" fn validity_state_too_short_ffi(obj : JsValue) -> JsValue = "(obj) => obj.tooShort"

///|
extern "js" fn validity_state_range_underflow_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rangeUnderflow"

///|
extern "js" fn validity_state_range_overflow_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rangeOverflow"

///|
extern "js" fn validity_state_step_mismatch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.stepMismatch"

///|
extern "js" fn validity_state_bad_input_ffi(obj : JsValue) -> JsValue = "(obj) => obj.badInput"

///|
extern "js" fn validity_state_custom_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.customError"

///|
extern "js" fn validity_state_valid_ffi(obj : JsValue) -> JsValue = "(obj) => obj.valid"
