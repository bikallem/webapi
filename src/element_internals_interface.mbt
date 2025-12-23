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
  set_form_value(
    self : Self,
    value : &TElementInternalsSetFormValueValue,
    state? : &TElementInternalsSetFormValueState,
  ) -> Unit = _
  set_validity(
    self : Self,
    flags? : ValidityStateFlags,
    message? : String,
    anchor? : &THTMLElement,
  ) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
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
