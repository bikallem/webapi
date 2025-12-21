///|
#external
pub type DOMRect

///|
pub impl TJsValue for DOMRect with to_js(self : DOMRect) -> JsValue = "%identity"

///|
pub fn[T : TDOMRect] DOMRect::into(self : DOMRect) -> T = "%identity"

///|
pub impl TDOMRect for DOMRect

///|
pub impl TDOMRectReadOnly for DOMRect

///|
extern "js" fn dom_rect_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRect = "(x, y, width, height) => new DOMRect(x, y, width, height)"

///|
pub fn DOMRect::new(
  x? : Double = 0,
  y? : Double = 0,
  width? : Double = 0,
  height? : Double = 0,
) -> DOMRect {
  dom_rect_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
pub trait TDOMRect: TDOMRectReadOnly {}
