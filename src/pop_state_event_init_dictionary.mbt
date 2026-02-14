// Do not edit. This file is generated.
// MoonBit type: PopStateEventInit
// Specifications: dom.idl, html.idl

///|
/// [PopStateEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEventInit)
#external
pub type PopStateEventInit

///|
pub impl TJsValue for PopStateEventInit with to_js(self : PopStateEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for PopStateEventInit with from_js_any(value : JsAny) -> PopStateEventInit = "%identity"

///|
pub fn PopStateEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  state? : JsValue,
  has_ua_visual_transition? : Bool,
) -> PopStateEventInit {
  pop_state_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(state),
    opt_to_js(has_ua_visual_transition),
  )
}

///|
pub fn PopStateEventInit::empty() -> PopStateEventInit {
  pop_state_event_init_empty_ffi()
}

///|
pub fn PopStateEventInit::bubbles(self : PopStateEventInit) -> Bool? {
  let result = pop_state_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn PopStateEventInit::cancelable(self : PopStateEventInit) -> Bool? {
  let result = pop_state_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn PopStateEventInit::composed(self : PopStateEventInit) -> Bool? {
  let result = pop_state_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn PopStateEventInit::state(self : PopStateEventInit) -> JsValue? {
  let result = pop_state_event_init_get_state_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn PopStateEventInit::has_ua_visual_transition(
  self : PopStateEventInit,
) -> Bool? {
  let result = pop_state_event_init_get_has_ua_visual_transition_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
