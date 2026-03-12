fn validity_state_flags_ffi(value_missing: JsValue, type_mismatch: JsValue, pattern_mismatch: JsValue, too_long: JsValue, too_short: JsValue, range_underflow: JsValue, range_overflow: JsValue, step_mismatch: JsValue, bad_input: JsValue, custom_error: JsValue) -> ValidityStateFlags = "webapi_ValidityStateFlags" "new"

fn validity_state_flags_empty_ffi() -> ValidityStateFlags = "webapi_Dictionary" "empty"

fn validity_state_flags_get_value_missing_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_valueMissing"

fn validity_state_flags_get_type_mismatch_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_typeMismatch"

fn validity_state_flags_get_pattern_mismatch_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_patternMismatch"

fn validity_state_flags_get_too_long_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_tooLong"

fn validity_state_flags_get_too_short_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_tooShort"

fn validity_state_flags_get_range_underflow_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_rangeUnderflow"

fn validity_state_flags_get_range_overflow_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_rangeOverflow"

fn validity_state_flags_get_step_mismatch_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_stepMismatch"

fn validity_state_flags_get_bad_input_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_badInput"

fn validity_state_flags_get_custom_error_ffi(obj: JsValue) -> JsValue = "webapi_ValidityStateFlags" "get_customError"