// Auto-generated MoonBit bindings for CustomEvent interface
// Do not edit manually

#external
pub type CustomEvent

pub impl TJsValue for CustomEvent with to_js(self: CustomEvent) -> JsValue = "%identity"


pub fn[T: TCustomEvent] CustomEvent::into(self : CustomEvent) -> T = "%identity"
pub impl TCustomEvent for CustomEvent

pub fn CustomEvent::new(type_ : String, event_init_dict? : CustomEventInit) -> CustomEvent = "webapi_CustomEvent" "new"

pub trait TCustomEvent: TJsValue + TTEvent {
  detail(self: Self) -> JsValue = _
  init_custom_event(self: Self, type_ : String, bubbles? : Bool, cancelable? : Bool, detail? : JsValue) -> Unit = _
}

///|
fn custom_event_detail_ffi(obj : JsValue) -> JsValue = "webapi_CustomEvent" "detail"

///|
impl TCustomEvent with detail(self : Self) -> JsValue {
  custom_event_detail_ffi(self.to_js())
}

///|
fn custom_event_init_custom_event_ffi(obj : JsValue, type_ : JsValue, bubbles : JsValue, cancelable : JsValue, detail : JsValue) -> Unit = "webapi_CustomEvent" "initCustomEvent"

///|
impl TCustomEvent with init_custom_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool, detail? : JsValue) -> Unit {
  custom_event_init_custom_event_ffi(self.to_js(), TJsValue::to_js(type_), TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(detail))
}