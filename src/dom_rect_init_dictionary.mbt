// Auto-generated MoonBit bindings for DOMRectInit dictionary
// Do not edit manually

#external
pub type DOMRectInit

pub impl TJsValue for DOMRectInit with to_js(self: DOMRectInit) -> JsValue = "%identity"


fn dom_rect_init_ffi(x : JsValue, y : JsValue, width : JsValue, height : JsValue) -> DOMRectInit = "webapi_DOMRectInit" "new"


pub fn DOMRectInit::new(
  x? : Double? : Double = 0,
  y? : Double? : Double = 0,
  width? : Double? : Double = 0,
  height? : Double? : Double = 0) -> DOMRectInit {
    dom_rect_init_ffi(
      TJsValue::to_js(x)
     ,TJsValue::to_js(y)
     ,TJsValue::to_js(width)
     ,TJsValue::to_js(height)
    )
}


pub fn DOMRectInit::empty() -> DOMRectInit = "webapi_Dictionary" "empty"