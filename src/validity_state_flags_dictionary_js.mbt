extern "js" fn validity_state_flags_ffi(value_missing: JsValue, type_mismatch: JsValue, pattern_mismatch: JsValue, too_long: JsValue, too_short: JsValue, range_underflow: JsValue, range_overflow: JsValue, step_mismatch: JsValue, bad_input: JsValue, custom_error: JsValue) -> ValidityStateFlags = 
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

extern "js" fn validity_state_flags_empty_ffi() -> ValidityStateFlags = "() => {}"