// Do not edit. This file is generated.
// MoonBit type: ElementInternals
// Specifications: html.idl

///|
/// [ElementInternals](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals)
#external
pub type ElementInternals

///|
pub impl TJsValue for ElementInternals with to_js(self : ElementInternals) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementInternals with from_js_any(value : JsAny) -> ElementInternals = "%identity"

///|
pub fn[T : TElementInternals] ElementInternals::into(
  self : ElementInternals,
) -> T = "%identity"

///|
pub impl TElementInternals for ElementInternals

///|
pub(open) trait TElementInternalsSetFormValueValue: TJsValue {}

///|
pub impl TElementInternalsSetFormValueValue for File

///|
pub impl TElementInternalsSetFormValueValue for String

///|
pub impl TElementInternalsSetFormValueValue for FormData

///|
pub(open) trait TElementInternalsSetFormValueState: TJsValue {}

///|
pub impl TElementInternalsSetFormValueState for File

///|
pub impl TElementInternalsSetFormValueState for String

///|
pub impl TElementInternalsSetFormValueState for FormData

///|
/// [ElementInternals](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals) interface.
pub trait TElementInternals: TJsValue {
  shadow_root(self : Self) -> ShadowRoot = _
  set_form_value(
    self : Self,
    value : &TElementInternalsSetFormValueValue,
    state? : &TElementInternalsSetFormValueState,
  ) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  set_validity(
    self : Self,
    flags? : ValidityStateFlags,
    message? : String,
    anchor? : &THTMLElement,
  ) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  labels(self : Self) -> NodeList = _
  states(self : Self) -> CustomStateSet = _
}

///|
/// [ElementInternals.shadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/shadowRoot)
impl TElementInternals with shadow_root(self : Self) -> ShadowRoot {
  element_internals_shadow_root_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.setFormValue](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/setFormValue)
impl TElementInternals with set_form_value(
  self : Self,
  value : &TElementInternalsSetFormValueValue,
  state? : &TElementInternalsSetFormValueState,
) -> Unit {
  element_internals_set_form_value_ffi(
    TJsValue::to_js(self),
    value.to_js(),
    match state {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [ElementInternals.form](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/form)
impl TElementInternals with form(self : Self) -> HTMLFormElement {
  element_internals_form_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.setValidity](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/setValidity)
impl TElementInternals with set_validity(
  self : Self,
  flags? : ValidityStateFlags = ValidityStateFlags::empty(),
  message? : String,
  anchor? : &THTMLElement,
) -> Unit {
  element_internals_set_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(flags),
    opt_to_js(message),
    opt_to_js(anchor),
  )
}

///|
/// [ElementInternals.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/willValidate)
impl TElementInternals with will_validate(self : Self) -> Bool {
  element_internals_will_validate_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.validity](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/validity)
impl TElementInternals with validity(self : Self) -> ValidityState {
  element_internals_validity_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/validationMessage)
impl TElementInternals with validation_message(self : Self) -> String {
  element_internals_validation_message_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/checkValidity)
impl TElementInternals with check_validity(self : Self) -> Bool {
  element_internals_check_validity_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/reportValidity)
impl TElementInternals with report_validity(self : Self) -> Bool {
  element_internals_report_validity_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.labels](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/labels)
impl TElementInternals with labels(self : Self) -> NodeList {
  element_internals_labels_ffi(TJsValue::to_js(self))
}

///|
/// [ElementInternals.states](https://developer.mozilla.org/en-US/docs/Web/API/ElementInternals/states)
impl TElementInternals with states(self : Self) -> CustomStateSet {
  element_internals_states_ffi(TJsValue::to_js(self))
}
