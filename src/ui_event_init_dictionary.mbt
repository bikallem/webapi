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
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow,
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
) -> UIEventInit {
  ui_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
  )
}

///|
pub fn UIEventInit::empty() -> UIEventInit {
  ui_event_init_empty_ffi()
}
