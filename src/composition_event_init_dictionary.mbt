// Do not edit. This file is generated.
// MoonBit type: CompositionEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [CompositionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEventInit)
#external
pub type CompositionEventInit

///|
pub impl TJsValue for CompositionEventInit with to_js(
  self : CompositionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CompositionEventInit with from_js_any(value : JsAny) -> CompositionEventInit = "%identity"

///|
pub fn CompositionEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow,
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  data? : String = "",
) -> CompositionEventInit {
  composition_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(data),
  )
}

///|
pub fn CompositionEventInit::empty() -> CompositionEventInit {
  composition_event_init_empty_ffi()
}

///|
pub fn CompositionEventInit::bubbles(self : CompositionEventInit) -> Bool? {
  let result = composition_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CompositionEventInit::cancelable(self : CompositionEventInit) -> Bool? {
  let result = composition_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CompositionEventInit::composed(self : CompositionEventInit) -> Bool? {
  let result = composition_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CompositionEventInit::view(self : CompositionEventInit) -> Window? {
  let result = composition_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn CompositionEventInit::detail(self : CompositionEventInit) -> Int? {
  let result = composition_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CompositionEventInit::which(self : CompositionEventInit) -> UInt? {
  let result = composition_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn CompositionEventInit::data(self : CompositionEventInit) -> String? {
  let result = composition_event_init_get_data_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
