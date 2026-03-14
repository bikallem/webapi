// Do not edit. This file is generated.
// MoonBit type: ValidityState
// Specifications: html.idl

/// [ValidityState](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState)
#external
pub type ValidityState

pub impl TJsValue for ValidityState with to_js(self: ValidityState) -> JsValue = "%identity"

pub impl FromJsAny for ValidityState with from_js_any(value : JsAny) -> ValidityState = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TValidityState] ValidityState::into(self : ValidityState) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TValidityState] ValidityState::unsafe_into(self : ValidityState) -> T = "%identity"

pub impl HasConstructor for ValidityState with constructor_name() { "ValidityState" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TValidityState + HasConstructor] ValidityState::try_into(self : ValidityState) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  validity_state_value_missing_ffi(TJsValue::to_js(self))
}

/// [ValidityState.typeMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/typeMismatch)
impl TValidityState with type_mismatch(self : Self) -> Bool {
  validity_state_type_mismatch_ffi(TJsValue::to_js(self))
}

/// [ValidityState.patternMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/patternMismatch)
impl TValidityState with pattern_mismatch(self : Self) -> Bool {
  validity_state_pattern_mismatch_ffi(TJsValue::to_js(self))
}

/// [ValidityState.tooLong](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/tooLong)
impl TValidityState with too_long(self : Self) -> Bool {
  validity_state_too_long_ffi(TJsValue::to_js(self))
}

/// [ValidityState.tooShort](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/tooShort)
impl TValidityState with too_short(self : Self) -> Bool {
  validity_state_too_short_ffi(TJsValue::to_js(self))
}

/// [ValidityState.rangeUnderflow](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/rangeUnderflow)
impl TValidityState with range_underflow(self : Self) -> Bool {
  validity_state_range_underflow_ffi(TJsValue::to_js(self))
}

/// [ValidityState.rangeOverflow](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/rangeOverflow)
impl TValidityState with range_overflow(self : Self) -> Bool {
  validity_state_range_overflow_ffi(TJsValue::to_js(self))
}

/// [ValidityState.stepMismatch](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/stepMismatch)
impl TValidityState with step_mismatch(self : Self) -> Bool {
  validity_state_step_mismatch_ffi(TJsValue::to_js(self))
}

/// [ValidityState.badInput](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/badInput)
impl TValidityState with bad_input(self : Self) -> Bool {
  validity_state_bad_input_ffi(TJsValue::to_js(self))
}

/// [ValidityState.customError](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/customError)
impl TValidityState with custom_error(self : Self) -> Bool {
  validity_state_custom_error_ffi(TJsValue::to_js(self))
}

/// [ValidityState.valid](https://developer.mozilla.org/en-US/docs/Web/API/ValidityState/valid)
impl TValidityState with valid(self : Self) -> Bool {
  validity_state_valid_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn validity_state_value_missing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueMissing"

///|
#cfg(target="js")
fn validity_state_value_missing_ffi(obj: JsValue) -> Bool {
  validity_state_value_missing_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_type_mismatch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.typeMismatch"

///|
#cfg(target="js")
fn validity_state_type_mismatch_ffi(obj: JsValue) -> Bool {
  validity_state_type_mismatch_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_pattern_mismatch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.patternMismatch"

///|
#cfg(target="js")
fn validity_state_pattern_mismatch_ffi(obj: JsValue) -> Bool {
  validity_state_pattern_mismatch_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_too_long_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tooLong"

///|
#cfg(target="js")
fn validity_state_too_long_ffi(obj: JsValue) -> Bool {
  validity_state_too_long_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_too_short_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tooShort"

///|
#cfg(target="js")
fn validity_state_too_short_ffi(obj: JsValue) -> Bool {
  validity_state_too_short_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_range_underflow_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rangeUnderflow"

///|
#cfg(target="js")
fn validity_state_range_underflow_ffi(obj: JsValue) -> Bool {
  validity_state_range_underflow_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_range_overflow_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rangeOverflow"

///|
#cfg(target="js")
fn validity_state_range_overflow_ffi(obj: JsValue) -> Bool {
  validity_state_range_overflow_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_step_mismatch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.stepMismatch"

///|
#cfg(target="js")
fn validity_state_step_mismatch_ffi(obj: JsValue) -> Bool {
  validity_state_step_mismatch_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_bad_input_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.badInput"

///|
#cfg(target="js")
fn validity_state_bad_input_ffi(obj: JsValue) -> Bool {
  validity_state_bad_input_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_custom_error_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.customError"

///|
#cfg(target="js")
fn validity_state_custom_error_ffi(obj: JsValue) -> Bool {
  validity_state_custom_error_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn validity_state_valid_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valid"

///|
#cfg(target="js")
fn validity_state_valid_ffi(obj: JsValue) -> Bool {
  validity_state_valid_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn validity_state_value_missing_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_valueMissing"

#cfg(target="wasm-gc")
fn validity_state_type_mismatch_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_typeMismatch"

#cfg(target="wasm-gc")
fn validity_state_pattern_mismatch_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_patternMismatch"

#cfg(target="wasm-gc")
fn validity_state_too_long_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_tooLong"

#cfg(target="wasm-gc")
fn validity_state_too_short_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_tooShort"

#cfg(target="wasm-gc")
fn validity_state_range_underflow_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_rangeUnderflow"

#cfg(target="wasm-gc")
fn validity_state_range_overflow_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_rangeOverflow"

#cfg(target="wasm-gc")
fn validity_state_step_mismatch_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_stepMismatch"

#cfg(target="wasm-gc")
fn validity_state_bad_input_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_badInput"

#cfg(target="wasm-gc")
fn validity_state_custom_error_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_customError"

#cfg(target="wasm-gc")
fn validity_state_valid_ffi(obj: JsValue) -> Bool = "webapi_ValidityState" "get_valid"