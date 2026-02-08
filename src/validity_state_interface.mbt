// Do not edit. This file is generated.
// MoonBit type: ValidityState
// Specifications: html.idl

/// [ValidityState](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
#external
pub type ValidityState

pub impl TJsValue for ValidityState with to_js(self: ValidityState) -> JsValue = "%identity"

pub fn[T: TValidityState] ValidityState::into(self : ValidityState) -> T = "%identity"

pub impl TValidityState for ValidityState

/// [ValidityState](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState) interface.
pub trait TValidityState: TJsValue {
  value_missing(self : Self) -> Bool = _
  type_mismatch(self : Self) -> Bool = _
  pattern_mismatch(self : Self) -> Bool = _
  too_long(self : Self) -> Bool = _
  too_short(self : Self) -> Bool = _
  range_underflow(self : Self) -> Bool = _
  range_overflow(self : Self) -> Bool = _
  step_mismatch(self : Self) -> Bool = _
  bad_input(self : Self) -> Bool = _
  custom_error(self : Self) -> Bool = _
  valid(self : Self) -> Bool = _
}

/// [ValidityState.valueMissing](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/valueMissing)
impl TValidityState with value_missing(self : Self) -> Bool {
  validity_state_value_missing_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.typeMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/typeMismatch)
impl TValidityState with type_mismatch(self : Self) -> Bool {
  validity_state_type_mismatch_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.patternMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/patternMismatch)
impl TValidityState with pattern_mismatch(self : Self) -> Bool {
  validity_state_pattern_mismatch_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.tooLong](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/tooLong)
impl TValidityState with too_long(self : Self) -> Bool {
  validity_state_too_long_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.tooShort](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/tooShort)
impl TValidityState with too_short(self : Self) -> Bool {
  validity_state_too_short_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.rangeUnderflow](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/rangeUnderflow)
impl TValidityState with range_underflow(self : Self) -> Bool {
  validity_state_range_underflow_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.rangeOverflow](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/rangeOverflow)
impl TValidityState with range_overflow(self : Self) -> Bool {
  validity_state_range_overflow_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.stepMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/stepMismatch)
impl TValidityState with step_mismatch(self : Self) -> Bool {
  validity_state_step_mismatch_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.badInput](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/badInput)
impl TValidityState with bad_input(self : Self) -> Bool {
  validity_state_bad_input_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.customError](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/customError)
impl TValidityState with custom_error(self : Self) -> Bool {
  validity_state_custom_error_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [ValidityState.valid](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/valid)
impl TValidityState with valid(self : Self) -> Bool {
  validity_state_valid_ffi(TJsValue::to_js(self)).unsafe_cast()
}