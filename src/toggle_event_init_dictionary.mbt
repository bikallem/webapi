// Do not edit. This file is generated.
// MoonBit type: ToggleEventInit
// Specifications: dom.idl, html.idl

///|
/// [ToggleEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEventInit)
#external
pub type ToggleEventInit

///|
pub impl TJsValue for ToggleEventInit with to_js(self : ToggleEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ToggleEventInit with from_js_any(value : JsAny) -> ToggleEventInit = "%identity"

///|
pub fn ToggleEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  old_state? : String,
  new_state? : String,
  source? : &TElement,
) -> ToggleEventInit {
  toggle_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(old_state),
    opt_to_js(new_state),
    opt_to_js(source),
  )
}

///|
pub fn ToggleEventInit::empty() -> ToggleEventInit {
  toggle_event_init_empty_ffi()
}

///|
pub fn ToggleEventInit::bubbles(self : ToggleEventInit) -> Bool? {
  let result = toggle_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ToggleEventInit::cancelable(self : ToggleEventInit) -> Bool? {
  let result = toggle_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ToggleEventInit::composed(self : ToggleEventInit) -> Bool? {
  let result = toggle_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ToggleEventInit::old_state(self : ToggleEventInit) -> String? {
  let result = toggle_event_init_get_old_state_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ToggleEventInit::new_state(self : ToggleEventInit) -> String? {
  let result = toggle_event_init_get_new_state_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ToggleEventInit::source(self : ToggleEventInit) -> Element? {
  let result = toggle_event_init_get_source_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
