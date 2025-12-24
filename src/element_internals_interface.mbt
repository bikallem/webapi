///|
#external
pub type ElementInternals

///|
pub impl TJsValue for ElementInternals with to_js(self : ElementInternals) -> JsValue = "%identity"

///|
pub fn[T : TElementInternals] ElementInternals::into(
  self : ElementInternals,
) -> T = "%identity"

///|
pub impl TElementInternals for ElementInternals

///|
pub(open) trait TElementInternalsSetFormValueValue {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementInternalsSetFormValueValue for File with to_js(self : File) -> JsValue = "%identity"

///|
pub impl TElementInternalsSetFormValueValue for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TElementInternalsSetFormValueValue for FormData with to_js(
  self : FormData,
) -> JsValue = "%identity"

///|
pub(open) trait TElementInternalsSetFormValueState {
  to_js(self : Self) -> JsValue
}

///|
pub impl TElementInternalsSetFormValueState for File with to_js(self : File) -> JsValue = "%identity"

///|
pub impl TElementInternalsSetFormValueState for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TElementInternalsSetFormValueState for FormData with to_js(
  self : FormData,
) -> JsValue = "%identity"

///|
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
extern "js" fn element_internals_shadow_root_ffi(obj : JsValue) -> ShadowRoot = "(obj) => obj.shadowRoot"

///|
impl TElementInternals with shadow_root(self : Self) -> ShadowRoot {
  element_internals_shadow_root_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_set_form_value_ffi(
  obj : JsValue,
  value : JsValue,
  state : JsValue,
) -> Unit = "(obj, value, state) => obj.setFormValue(obj, value, state)"

///|
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
extern "js" fn element_internals_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl TElementInternals with form(self : Self) -> HTMLFormElement {
  element_internals_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_set_validity_ffi(
  obj : JsValue,
  flags : JsValue,
  message : JsValue,
  anchor : JsValue,
) -> Unit = "(obj, flags, message, anchor) => obj.setValidity(obj, flags, message, anchor)"

///|
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
extern "js" fn element_internals_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl TElementInternals with will_validate(self : Self) -> Bool {
  element_internals_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_validity_ffi(obj : JsValue) -> ValidityState = "(obj) => obj.validity"

///|
impl TElementInternals with validity(self : Self) -> ValidityState {
  element_internals_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl TElementInternals with validation_message(self : Self) -> String {
  element_internals_validation_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl TElementInternals with check_validity(self : Self) -> Bool {
  element_internals_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl TElementInternals with report_validity(self : Self) -> Bool {
  element_internals_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl TElementInternals with labels(self : Self) -> NodeList {
  element_internals_labels_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn element_internals_states_ffi(obj : JsValue) -> CustomStateSet = "(obj) => obj.states"

///|
impl TElementInternals with states(self : Self) -> CustomStateSet {
  element_internals_states_ffi(TJsValue::to_js(self))
}
