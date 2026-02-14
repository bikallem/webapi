// Do not edit. This file is generated.
// MoonBit type: ProgressEventInit
// Specifications: dom.idl, xhr.idl

///|
/// [ProgressEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEventInit)
#external
pub type ProgressEventInit

///|
pub impl TJsValue for ProgressEventInit with to_js(self : ProgressEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ProgressEventInit with from_js_any(value : JsAny) -> ProgressEventInit = "%identity"

///|
pub fn ProgressEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  length_computable? : Bool = false,
  loaded? : Double = (0 : Double),
  total? : Double = (0 : Double),
) -> ProgressEventInit {
  progress_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(length_computable),
    TJsValue::to_js(loaded),
    TJsValue::to_js(total),
  )
}

///|
pub fn ProgressEventInit::empty() -> ProgressEventInit {
  progress_event_init_empty_ffi()
}

///|
pub fn ProgressEventInit::bubbles(self : ProgressEventInit) -> Bool? {
  let result = progress_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ProgressEventInit::cancelable(self : ProgressEventInit) -> Bool? {
  let result = progress_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ProgressEventInit::composed(self : ProgressEventInit) -> Bool? {
  let result = progress_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ProgressEventInit::length_computable(self : ProgressEventInit) -> Bool? {
  let result = progress_event_init_get_length_computable_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ProgressEventInit::loaded(self : ProgressEventInit) -> Double? {
  let result = progress_event_init_get_loaded_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ProgressEventInit::total(self : ProgressEventInit) -> Double? {
  let result = progress_event_init_get_total_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
