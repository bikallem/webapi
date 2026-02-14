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
pub impl FromJsAny for CustomEventInit with from_js_any(value : JsAny) -> CustomEventInit = "%identity"

///|
pub fn CustomEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  detail? : JsValue,
) -> CustomEventInit {
  custom_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(detail),
  )
}

///|
pub fn CustomEventInit::empty() -> CustomEventInit {
  custom_event_init_empty_ffi()
}

///|
pub fn CustomEventInit::bubbles(self : CustomEventInit) -> Bool? {
  let result = custom_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CustomEventInit::cancelable(self : CustomEventInit) -> Bool? {
  let result = custom_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CustomEventInit::composed(self : CustomEventInit) -> Bool? {
  let result = custom_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CustomEventInit::detail(self : CustomEventInit) -> JsValue? {
  let result = custom_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
