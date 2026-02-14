// Do not edit. This file is generated.
// MoonBit type: EventInit
// Specifications: dom.idl

///|
/// [EventInit](https://developer.mozilla.org/en-US/docs/Web/API/EventInit)
#external
pub type EventInit

///|
pub impl TJsValue for EventInit with to_js(self : EventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for EventInit with from_js_any(value : JsAny) -> EventInit = "%identity"

///|
pub fn EventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
) -> EventInit {
  event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed))
}

///|
pub fn EventInit::empty() -> EventInit {
  event_init_empty_ffi()
}

///|
pub fn EventInit::bubbles(self : EventInit) -> Bool? {
  let result = event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventInit::cancelable(self : EventInit) -> Bool? {
  let result = event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EventInit::composed(self : EventInit) -> Bool? {
  let result = event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
