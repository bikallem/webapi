// Do not edit. This file is generated.
// MoonBit type: UIEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [UIEventInit](https://developer.mozilla.org/en-US/docs/Web/API/UIEventInit)
#external
pub type UIEventInit

///|
pub impl TJsValue for UIEventInit with to_js(self : UIEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for UIEventInit with from_js_any(value : JsAny) -> UIEventInit = "%identity"

///|
pub fn UIEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view? : &TWindow,
  detail? : Int,
  which? : UInt,
) -> UIEventInit {
  ui_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
  )
}

///|
pub fn UIEventInit::empty() -> UIEventInit {
  ui_event_init_empty_ffi()
}

///|
pub fn UIEventInit::bubbles(self : UIEventInit) -> Bool? {
  let result = ui_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn UIEventInit::cancelable(self : UIEventInit) -> Bool? {
  let result = ui_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn UIEventInit::composed(self : UIEventInit) -> Bool? {
  let result = ui_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn UIEventInit::view(self : UIEventInit) -> Window? {
  let result = ui_event_init_get_view_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn UIEventInit::detail(self : UIEventInit) -> Int? {
  let result = ui_event_init_get_detail_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn UIEventInit::which(self : UIEventInit) -> UInt? {
  let result = ui_event_init_get_which_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
