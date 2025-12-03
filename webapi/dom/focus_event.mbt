// Auto-generated MoonBit bindings for FocusEvent

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface FocusEvent : UIEvent {
//   constructor(DOMString type, optional FocusEventInit eventInitDict = {});
//   readonly attribute EventTarget? relatedTarget;
// };

///|
#external
pub type FocusEvent

///|
pub trait TFocusEvent: TJsValue + TUIEvent {
  related_target(self : Self) -> EventTarget? = _
}

///|
pub impl TEvent for FocusEvent

///|
pub impl TUIEvent for FocusEvent

///|
pub impl TFocusEvent for FocusEvent

///|
pub impl TJsValue for FocusEvent with to_js(self : FocusEvent) -> JsValue = "%identity"

///|
pub fn FocusEvent::null() -> FocusEvent = "JsValue" "null"

///|
pub fn FocusEvent::is_null(self : FocusEvent) -> Bool = "JsValue" "isNull"

///|
fn focus_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FocusEvent = "webapi_FocusEvent" "new"

///|
pub fn FocusEvent::new(
  type_ : String,
  event_init_dict? : FocusEventInit = FocusEventInit::empty(),
) -> FocusEvent {
  focus_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn focus_event_related_target_ffi(obj : JsValue) -> JsValue = "webapi_FocusEvent" "relatedTarget"

///|
impl TFocusEvent with related_target(self : Self) -> EventTarget? {
  focus_event_related_target_ffi(self.to_js()).as_option()
}
