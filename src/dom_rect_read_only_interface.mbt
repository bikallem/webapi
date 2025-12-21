///|
#external
pub type DOMRectReadOnly

///|
pub impl TJsValue for DOMRectReadOnly with to_js(self : DOMRectReadOnly) -> JsValue = "%identity"

///|
pub fn[T : TDOMRectReadOnly] DOMRectReadOnly::into(self : DOMRectReadOnly) -> T = "%identity"

///|
pub impl TDOMRectReadOnly for DOMRectReadOnly

///|
extern "js" fn dom_rect_read_only_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectReadOnly = "(x, y, width, height) => new DOMRectReadOnly(x, y, width, height)"

///|
pub fn DOMRectReadOnly::new(
  x? : Double = 0,
  y? : Double = 0,
  width? : Double = 0,
  height? : Double = 0,
) -> DOMRectReadOnly {
  dom_rect_read_only_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
pub trait TDOMRectReadOnly: TJsValue {
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_rect_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TDOMRectReadOnly with to_json(self : Self) -> JsValue {
  dom_rect_read_only_to_json_ffi(TJsValue::to_js(self))
}
