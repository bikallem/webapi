// Do not edit. This file is generated.
// MoonBit type: ErrorEventInit
// Specifications: dom.idl, html.idl

///|
/// [ErrorEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEventInit)
#external
pub type ErrorEventInit

///|
pub impl TJsValue for ErrorEventInit with to_js(self : ErrorEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ErrorEventInit with from_js_any(value : JsAny) -> ErrorEventInit = "%identity"

///|
pub fn ErrorEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  message? : String = "",
  filename? : String = "",
  lineno? : UInt = (0 : UInt),
  colno? : UInt = (0 : UInt),
  error? : JsValue,
) -> ErrorEventInit {
  error_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(message),
    TJsValue::to_js(filename),
    TJsValue::to_js(lineno),
    TJsValue::to_js(colno),
    opt_to_js(error),
  )
}

///|
pub fn ErrorEventInit::empty() -> ErrorEventInit {
  error_event_init_empty_ffi()
}

///|
pub fn ErrorEventInit::bubbles(self : ErrorEventInit) -> Bool? {
  let result = error_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::cancelable(self : ErrorEventInit) -> Bool? {
  let result = error_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::composed(self : ErrorEventInit) -> Bool? {
  let result = error_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::message(self : ErrorEventInit) -> String? {
  let result = error_event_init_get_message_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::filename(self : ErrorEventInit) -> String? {
  let result = error_event_init_get_filename_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::lineno(self : ErrorEventInit) -> UInt? {
  let result = error_event_init_get_lineno_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::colno(self : ErrorEventInit) -> UInt? {
  let result = error_event_init_get_colno_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ErrorEventInit::error(self : ErrorEventInit) -> JsValue? {
  let result = error_event_init_get_error_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
