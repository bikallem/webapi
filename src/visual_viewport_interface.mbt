// Do not edit. This file is generated.
// MoonBit type: VisualViewport
// Specifications: cssom-view.idl

/// [VisualViewport](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport)
#external
pub type VisualViewport

pub impl TJsValue for VisualViewport with to_js(self: VisualViewport) -> JsValue = "%identity"

pub fn[T: TVisualViewport] VisualViewport::into(self : VisualViewport) -> T = "%identity"

pub impl TVisualViewport for VisualViewport

pub impl TEventTarget for VisualViewport

/// [VisualViewport](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport) interface.
pub trait TVisualViewport: TEventTarget {
  offset_left(self : Self) -> Double = _
  offset_top(self : Self) -> Double = _
  page_left(self : Self) -> Double = _
  page_top(self : Self) -> Double = _
  width(self : Self) -> Double = _
  height(self : Self) -> Double = _
  scale(self : Self) -> Double = _
  onresize(self : Self) -> EventHandler = _
  set_onresize(self : Self, onresize : EventHandler) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : EventHandler) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : EventHandler) -> Unit = _
}

/// [VisualViewport.offsetLeft](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/offsetLeft)
impl TVisualViewport with offset_left(self : Self) -> Double {
  visual_viewport_offset_left_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.offsetTop](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/offsetTop)
impl TVisualViewport with offset_top(self : Self) -> Double {
  visual_viewport_offset_top_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.pageLeft](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/pageLeft)
impl TVisualViewport with page_left(self : Self) -> Double {
  visual_viewport_page_left_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.pageTop](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/pageTop)
impl TVisualViewport with page_top(self : Self) -> Double {
  visual_viewport_page_top_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.width](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/width)
impl TVisualViewport with width(self : Self) -> Double {
  visual_viewport_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.height](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/height)
impl TVisualViewport with height(self : Self) -> Double {
  visual_viewport_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.scale](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/scale)
impl TVisualViewport with scale(self : Self) -> Double {
  visual_viewport_scale_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.onresize](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onresize)
impl TVisualViewport with onresize(self : Self) -> EventHandler {
  visual_viewport_onresize_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.onresize](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onresize)
impl TVisualViewport with set_onresize(self : Self, 
onresize : EventHandler) -> Unit {
  visual_viewport_set_onresize_ffi(TJsValue::to_js(self), TJsValue::to_js(onresize))
}

/// [VisualViewport.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscroll)
impl TVisualViewport with onscroll(self : Self) -> EventHandler {
  visual_viewport_onscroll_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscroll)
impl TVisualViewport with set_onscroll(self : Self, 
onscroll : EventHandler) -> Unit {
  visual_viewport_set_onscroll_ffi(TJsValue::to_js(self), TJsValue::to_js(onscroll))
}

/// [VisualViewport.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscrollend)
impl TVisualViewport with onscrollend(self : Self) -> EventHandler {
  visual_viewport_onscrollend_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VisualViewport.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscrollend)
impl TVisualViewport with set_onscrollend(self : Self, 
onscrollend : EventHandler) -> Unit {
  visual_viewport_set_onscrollend_ffi(TJsValue::to_js(self), TJsValue::to_js(onscrollend))
}