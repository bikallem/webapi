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
