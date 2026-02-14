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
pub fn ValidityStateFlags::empty() -> ValidityStateFlags {
  validity_state_flags_empty_ffi()
}

///|
pub fn ValidityStateFlags::value_missing(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_value_missing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::type_mismatch(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_type_mismatch_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::pattern_mismatch(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_pattern_mismatch_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::too_long(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_too_long_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::too_short(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_too_short_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::range_underflow(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_range_underflow_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::range_overflow(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_range_overflow_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::step_mismatch(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_step_mismatch_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::bad_input(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_bad_input_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ValidityStateFlags::custom_error(self : ValidityStateFlags) -> Bool? {
  let result = validity_state_flags_get_custom_error_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
