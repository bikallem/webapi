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
