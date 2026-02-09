// Do not edit. This file is generated.
// MoonBit type: CustomEventInit
// Specifications: dom.idl

///|
/// [CustomEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CustomEventInit)
#external
pub type CustomEventInit

///|
pub impl TJsValue for CustomEventInit with to_js(self : CustomEventInit) -> JsValue = "%identity"

///|
pub fn CustomEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  detail? : JsValue = JsValue::null(),
) -> CustomEventInit {
  custom_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(detail),
  )
}

///|
pub fn CustomEventInit::empty() -> CustomEventInit {
  custom_event_init_empty_ffi()
}
