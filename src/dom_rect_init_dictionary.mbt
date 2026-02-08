// Do not edit. This file is generated.
// MoonBit type: DOMRectInit
// Specifications: geometry.idl

/// [DOMRectInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectInit)
#external
pub type DOMRectInit

pub impl TJsValue for DOMRectInit with to_js(self: DOMRectInit) -> JsValue = "%identity"

pub fn DOMRectInit::new(x? : Double = (0: Double), 
y? : Double = (0: Double), 
width? : Double = (0: Double), 
height? : Double = (0: Double)) -> DOMRectInit {
  dom_rect_init_ffi(TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(width), TJsValue::to_js(height))
}

pub fn DOMRectInit::empty() -> DOMRectInit { dom_rect_init_empty_ffi() }