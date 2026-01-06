// Do not edit. This file is generated.
// MoonBit type: DOMRectReadOnly
// Specifications: geometry.idl

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
extern "js" fn dom_rect_read_only_new_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectReadOnly = "(x, y, width, height) => new DOMRectReadOnly(x, y, width, height)"

///|
pub fn DOMRectReadOnly::new(
  x? : Double = (0 : Double),
  y? : Double = (0 : Double),
  width? : Double = (0 : Double),
  height? : Double = (0 : Double),
) -> DOMRectReadOnly {
  dom_rect_read_only_new_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(width),
    TJsValue::to_js(height),
  )
}

///|
pub trait TDOMRectReadOnly: TJsValue {
  x(self : Self) -> Double = _
  y(self : Self) -> Double = _
  width(self : Self) -> Double = _
  height(self : Self) -> Double = _
  top(self : Self) -> Double = _
  right(self : Self) -> Double = _
  bottom(self : Self) -> Double = _
  left(self : Self) -> Double = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_rect_read_only_from_rect_ffi(
  other : JsValue,
) -> DOMRectReadOnly = "(other) => DOMRectReadOnly.fromRect(other)"

///|
pub fn DOMRectReadOnly::from_rect(
  other? : DOMRectInit = DOMRectInit::empty(),
) -> DOMRectReadOnly {
  dom_rect_read_only_from_rect_ffi(TJsValue::to_js(other))
}

///|
extern "js" fn dom_rect_read_only_x_ffi(obj : JsValue) -> Double = "(obj) => obj.x"

///|
impl TDOMRectReadOnly with x(self : Self) -> Double {
  dom_rect_read_only_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_y_ffi(obj : JsValue) -> Double = "(obj) => obj.y"

///|
impl TDOMRectReadOnly with y(self : Self) -> Double {
  dom_rect_read_only_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_width_ffi(obj : JsValue) -> Double = "(obj) => obj.width"

///|
impl TDOMRectReadOnly with width(self : Self) -> Double {
  dom_rect_read_only_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_height_ffi(obj : JsValue) -> Double = "(obj) => obj.height"

///|
impl TDOMRectReadOnly with height(self : Self) -> Double {
  dom_rect_read_only_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_top_ffi(obj : JsValue) -> Double = "(obj) => obj.top"

///|
impl TDOMRectReadOnly with top(self : Self) -> Double {
  dom_rect_read_only_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_right_ffi(obj : JsValue) -> Double = "(obj) => obj.right"

///|
impl TDOMRectReadOnly with right(self : Self) -> Double {
  dom_rect_read_only_right_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_bottom_ffi(obj : JsValue) -> Double = "(obj) => obj.bottom"

///|
impl TDOMRectReadOnly with bottom(self : Self) -> Double {
  dom_rect_read_only_bottom_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_left_ffi(obj : JsValue) -> Double = "(obj) => obj.left"

///|
impl TDOMRectReadOnly with left(self : Self) -> Double {
  dom_rect_read_only_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_rect_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
impl TDOMRectReadOnly with to_json(self : Self) -> JsValue {
  dom_rect_read_only_to_json_ffi(TJsValue::to_js(self))
}
