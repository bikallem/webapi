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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  state? : JsValue = JsValue::null(),
  has_ua_visual_transition? : Bool = false,
) -> PopStateEventInit {
  pop_state_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(state),
    TJsValue::to_js(has_ua_visual_transition),
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
