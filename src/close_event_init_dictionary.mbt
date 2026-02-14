// Do not edit. This file is generated.
// MoonBit type: CloseEventInit
// Specifications: websockets.idl, dom.idl

///|
/// [CloseEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CloseEventInit)
#external
pub type CloseEventInit

///|
pub impl TJsValue for CloseEventInit with to_js(self : CloseEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CloseEventInit with from_js_any(value : JsAny) -> CloseEventInit = "%identity"

///|
pub fn CloseEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  was_clean? : Bool = false,
  code? : UInt = (0 : UInt),
  reason? : String = "",
) -> CloseEventInit {
  close_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(was_clean),
    TJsValue::to_js(code),
    TJsValue::to_js(reason),
  )
}

///|
pub fn CloseEventInit::empty() -> CloseEventInit {
  close_event_init_empty_ffi()
}

///|
pub fn CloseEventInit::bubbles(self : CloseEventInit) -> Bool? {
  let result = close_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CloseEventInit::cancelable(self : CloseEventInit) -> Bool? {
  let result = close_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CloseEventInit::composed(self : CloseEventInit) -> Bool? {
  let result = close_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CloseEventInit::was_clean(self : CloseEventInit) -> Bool? {
  let result = close_event_init_get_was_clean_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CloseEventInit::code(self : CloseEventInit) -> UInt? {
  let result = close_event_init_get_code_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CloseEventInit::reason(self : CloseEventInit) -> String? {
  let result = close_event_init_get_reason_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
