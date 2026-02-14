// Do not edit. This file is generated.
// MoonBit type: FocusEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [FocusEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FocusEventInit)
#external
pub type FocusEventInit

///|
pub impl TJsValue for FocusEventInit with to_js(self : FocusEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for FocusEventInit with from_js_any(value : JsAny) -> FocusEventInit = "%identity"

///|
pub fn FocusEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view? : &TWindow,
  detail? : Int,
  which? : UInt,
  related_target? : &TEventTarget,
) -> FocusEventInit {
  focus_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
    opt_to_js(related_target),
  )
}

///|
pub fn FocusEventInit::empty() -> FocusEventInit {
  focus_event_init_empty_ffi()
}

///|
pub fn FocusEventInit::bubbles(self : FocusEventInit) -> Bool? {
  let result = focus_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusEventInit::cancelable(self : FocusEventInit) -> Bool? {
  let result = focus_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusEventInit::composed(self : FocusEventInit) -> Bool? {
  let result = focus_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusEventInit::view(self : FocusEventInit) -> Window? {
  let result = focus_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn FocusEventInit::detail(self : FocusEventInit) -> Int? {
  let result = focus_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusEventInit::which(self : FocusEventInit) -> UInt? {
  let result = focus_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FocusEventInit::related_target(self : FocusEventInit) -> EventTarget? {
  let result = focus_event_init_get_related_target_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
