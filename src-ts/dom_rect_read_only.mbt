// Auto-generated MoonBit bindings for DOMRectReadOnly

// Do not edit manually

///|
#external
pub type DOMRectReadOnly

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
pub fn[T : TDOMRectReadOnly] DOMRectReadOnly::into(self : DOMRectReadOnly) -> T = "%identity"

///|
pub impl TDOMRectReadOnly for DOMRectReadOnly

///|
pub impl TJsValue for DOMRectReadOnly with to_js(self : DOMRectReadOnly) -> JsValue = "%identity"

///|
pub fn DOMRectReadOnly::null() -> DOMRectReadOnly {
  JsValue::null()
}

///|
fn dom_rect_read_only_new_ffi(x : JsValue, y : JsValue, width : JsValue, height : JsValue) -> DOMRectReadOnly = "webapi_DOMRectReadOnly" "new"

///|
pub fn DOMRectReadOnly::new(x? : Double = 0, y? : Double = 0, width? : Double = 0, height? : Double = 0) -> DOMRectReadOnly {
  dom_rect_read_only_new_ffi(TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(width), TJsValue::to_js(height))
}

///|
fn dom_rect_read_only_from_rect_ffi(other : JsValue) -> JsValue = "webapi_DOMRectReadOnly" "fromRect"

///|
pub fn DOMRectReadOnly::from_rect(other? : DOMRectInit = DOMRectInit::empty()) -> JsValue {
  dom_rect_read_only_from_rect_ffi(TJsValue::to_js(other))
}

///|
fn dom_rect_read_only_to_json_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectReadOnly" "toJSON"

///|
impl TDOMRectReadOnly with to_json(self : Self) -> JsValue {
  dom_rect_read_only_to_json_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn dom_rect_read_only_x_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "x"

///|
impl TDOMRectReadOnly with x(self : Self) -> Double {
  dom_rect_read_only_x_ffi(self.to_js())
}

///|
fn dom_rect_read_only_y_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "y"

///|
impl TDOMRectReadOnly with y(self : Self) -> Double {
  dom_rect_read_only_y_ffi(self.to_js())
}

///|
fn dom_rect_read_only_width_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "width"

///|
impl TDOMRectReadOnly with width(self : Self) -> Double {
  dom_rect_read_only_width_ffi(self.to_js())
}

///|
fn dom_rect_read_only_height_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "height"

///|
impl TDOMRectReadOnly with height(self : Self) -> Double {
  dom_rect_read_only_height_ffi(self.to_js())
}

///|
fn dom_rect_read_only_top_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "top"

///|
impl TDOMRectReadOnly with top(self : Self) -> Double {
  dom_rect_read_only_top_ffi(self.to_js())
}

///|
fn dom_rect_read_only_right_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "right"

///|
impl TDOMRectReadOnly with right(self : Self) -> Double {
  dom_rect_read_only_right_ffi(self.to_js())
}

///|
fn dom_rect_read_only_bottom_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "bottom"

///|
impl TDOMRectReadOnly with bottom(self : Self) -> Double {
  dom_rect_read_only_bottom_ffi(self.to_js())
}

///|
fn dom_rect_read_only_left_ffi(obj : JsValue) -> Double = "webapi_DOMRectReadOnly" "left"

///|
impl TDOMRectReadOnly with left(self : Self) -> Double {
  dom_rect_read_only_left_ffi(self.to_js())
}