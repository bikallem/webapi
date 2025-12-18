// Auto-generated MoonBit bindings for CustomEvent

// Do not edit manually

///|
#external
pub type CustomEvent

///|
pub trait TCustomEvent: TJsValue + TEvent {
  detail(self : Self) -> JsValue = _
  init_custom_event(
    self : Self,
    type_ : String,
    bubbles? : Bool,
    cancelable? : Bool,
    detail? : JsValue,
  ) -> Unit = _
}

///|
pub impl TEvent for CustomEvent

///|
pub impl TCustomEvent for CustomEvent

///|
pub impl TJsValue for CustomEvent with to_js(self : CustomEvent) -> JsValue = "%identity"

///|
pub fn CustomEvent::null() -> CustomEvent {
  JsValue::null()
}

///|
fn custom_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CustomEvent = "webapi_CustomEvent" "new"

///|
pub fn CustomEvent::new(
  type_ : String,
  event_init_dict? : CustomEventInit = CustomEventInit::empty(),
) -> CustomEvent {
  custom_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn custom_event_init_custom_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  detail : JsValue,
) -> Unit = "webapi_CustomEvent" "initCustomEvent"

///|
impl TCustomEvent with init_custom_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  detail? : JsValue,
) -> Unit {
  let detail_js = opt_to_js(detail)
  custom_event_init_custom_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    detail_js,
  )
}

///|
fn custom_event_detail_ffi(obj : JsValue) -> JsValue = "webapi_CustomEvent" "detail"

///|
impl TCustomEvent with detail(self : Self) -> JsValue {
  custom_event_detail_ffi(self.to_js())
}
