// Do not edit. This file is generated.
// MoonBit type: DOMRectReadOnly
// Specifications: geometry.idl

/// [DOMRectReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly)
#external
pub type DOMRectReadOnly

pub impl TJsValue for DOMRectReadOnly with to_js(self: DOMRectReadOnly) -> JsValue = "%identity"

pub impl FromJsAny for DOMRectReadOnly with from_js_any(value : JsAny) -> DOMRectReadOnly = "%identity"

pub fn[T: TDOMRectReadOnly] DOMRectReadOnly::into(self : DOMRectReadOnly) -> T = "%identity"

pub impl TDOMRectReadOnly for DOMRectReadOnly

pub fn DOMRectReadOnly::new(x? : Double, 
y? : Double, 
width? : Double, 
height? : Double) -> DOMRectReadOnly {
  dom_rect_read_only_new_ffi(opt_to_js(x), opt_to_js(y), opt_to_js(width), opt_to_js(height))
}

/// [DOMRectReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly) interface.
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

/// [DOMRectReadOnly.fromRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/fromRect)
pub fn DOMRectReadOnly::from_rect(other? : DOMRectInit) -> DOMRectReadOnly {
  dom_rect_read_only_from_rect_ffi(opt_to_js(other))
}

/// [DOMRectReadOnly.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/x)
impl TDOMRectReadOnly with x(self : Self) -> Double {
  dom_rect_read_only_x_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/y)
impl TDOMRectReadOnly with y(self : Self) -> Double {
  dom_rect_read_only_y_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.width](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/width)
impl TDOMRectReadOnly with width(self : Self) -> Double {
  dom_rect_read_only_width_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.height](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/height)
impl TDOMRectReadOnly with height(self : Self) -> Double {
  dom_rect_read_only_height_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.top](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/top)
impl TDOMRectReadOnly with top(self : Self) -> Double {
  dom_rect_read_only_top_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.right](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/right)
impl TDOMRectReadOnly with right(self : Self) -> Double {
  dom_rect_read_only_right_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.bottom](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/bottom)
impl TDOMRectReadOnly with bottom(self : Self) -> Double {
  dom_rect_read_only_bottom_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.left](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/left)
impl TDOMRectReadOnly with left(self : Self) -> Double {
  dom_rect_read_only_left_ffi(TJsValue::to_js(self))
}

/// [DOMRectReadOnly.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly/toJSON)
impl TDOMRectReadOnly with to_json(self : Self) -> JsValue {
  dom_rect_read_only_to_json_ffi(TJsValue::to_js(self))
}