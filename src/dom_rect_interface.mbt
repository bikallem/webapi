// Do not edit. This file is generated.
// MoonBit type: DOMRect
// Specifications: geometry.idl

/// [DOMRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect)
#external
pub type DOMRect

pub impl TJsValue for DOMRect with to_js(self: DOMRect) -> JsValue = "%identity"

pub fn[T: TDOMRect] DOMRect::into(self : DOMRect) -> T = "%identity"

pub impl TDOMRect for DOMRect

pub impl TDOMRectReadOnly for DOMRect

pub fn DOMRect::new(x? : Double = (0: Double), 
y? : Double = (0: Double), 
width? : Double = (0: Double), 
height? : Double = (0: Double)) -> DOMRect {
  dom_rect_new_ffi(TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(width), TJsValue::to_js(height))
}

/// [DOMRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect) interface.
pub trait TDOMRect: TDOMRectReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, x : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, y : Double) -> Unit = _
  width(self : Self) -> Double = _
  set_width(self : Self, width : Double) -> Unit = _
  height(self : Self) -> Double = _
  set_height(self : Self, height : Double) -> Unit = _
}

/// [DOMRect.fromRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/fromRect)
pub fn DOMRect::from_rect(other? : DOMRectInit = DOMRectInit::empty()) -> DOMRect {
  dom_rect_from_rect_ffi(TJsValue::to_js(other))
}

/// [DOMRect.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/x)
impl TDOMRect with x(self : Self) -> Double {
  dom_rect_x_ffi(TJsValue::to_js(self))
}

/// [DOMRect.x](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/x)
impl TDOMRect with set_x(self : Self, 
x : Double) -> Unit {
  dom_rect_set_x_ffi(TJsValue::to_js(self), TJsValue::to_js(x))
}

/// [DOMRect.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/y)
impl TDOMRect with y(self : Self) -> Double {
  dom_rect_y_ffi(TJsValue::to_js(self))
}

/// [DOMRect.y](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/y)
impl TDOMRect with set_y(self : Self, 
y : Double) -> Unit {
  dom_rect_set_y_ffi(TJsValue::to_js(self), TJsValue::to_js(y))
}

/// [DOMRect.width](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/width)
impl TDOMRect with width(self : Self) -> Double {
  dom_rect_width_ffi(TJsValue::to_js(self))
}

/// [DOMRect.width](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/width)
impl TDOMRect with set_width(self : Self, 
width : Double) -> Unit {
  dom_rect_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [DOMRect.height](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/height)
impl TDOMRect with height(self : Self) -> Double {
  dom_rect_height_ffi(TJsValue::to_js(self))
}

/// [DOMRect.height](https://developer.mozilla.org/en-US/docs/Web/API/DOMRect/height)
impl TDOMRect with set_height(self : Self, 
height : Double) -> Unit {
  dom_rect_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}