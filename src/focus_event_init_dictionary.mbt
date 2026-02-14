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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow,
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  related_target? : &TEventTarget,
) -> FocusEventInit {
  focus_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    opt_to_js(related_target),
  )
}

///|
pub fn FocusEventInit::empty() -> FocusEventInit {
  focus_event_init_empty_ffi()
}
