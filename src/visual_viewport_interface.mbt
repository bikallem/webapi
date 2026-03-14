// Do not edit. This file is generated.
// MoonBit type: VisualViewport
// Specifications: cssom-view.idl

///|
/// [VisualViewport](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport)
#external
pub type VisualViewport

///|
pub impl TJsValue for VisualViewport with to_js(self : VisualViewport) -> JsValue = "%identity"

///|
pub impl FromJsAny for VisualViewport with from_js_any(value : JsAny) -> VisualViewport = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TVisualViewport] VisualViewport::into(self : VisualViewport) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TVisualViewport] VisualViewport::unsafe_into(
  self : VisualViewport,
) -> T = "%identity"

///|
pub impl HasConstructor for VisualViewport with constructor_name() {
  "VisualViewport"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TVisualViewport + HasConstructor] VisualViewport::try_into(
  self : VisualViewport,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TVisualViewport for VisualViewport

///|
pub impl TEventTarget for VisualViewport

///|
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
  set_onresize(self : Self, onresize : (Event) -> JsValue) -> Unit = _
  onscroll(self : Self) -> EventHandler = _
  set_onscroll(self : Self, onscroll : (Event) -> JsValue) -> Unit = _
  onscrollend(self : Self) -> EventHandler = _
  set_onscrollend(self : Self, onscrollend : (Event) -> JsValue) -> Unit = _
}

///|
/// [VisualViewport.offsetLeft](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/offsetLeft)
impl TVisualViewport with offset_left(self : Self) -> Double {
  visual_viewport_offset_left_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.offsetTop](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/offsetTop)
impl TVisualViewport with offset_top(self : Self) -> Double {
  visual_viewport_offset_top_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.pageLeft](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/pageLeft)
impl TVisualViewport with page_left(self : Self) -> Double {
  visual_viewport_page_left_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.pageTop](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/pageTop)
impl TVisualViewport with page_top(self : Self) -> Double {
  visual_viewport_page_top_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.width](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/width)
impl TVisualViewport with width(self : Self) -> Double {
  visual_viewport_width_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.height](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/height)
impl TVisualViewport with height(self : Self) -> Double {
  visual_viewport_height_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.scale](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/scale)
impl TVisualViewport with scale(self : Self) -> Double {
  visual_viewport_scale_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.onresize](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onresize)
impl TVisualViewport with onresize(self : Self) -> EventHandler {
  visual_viewport_onresize_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.onresize](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onresize)
impl TVisualViewport with set_onresize(
  self : Self,
  onresize : (Event) -> JsValue,
) -> Unit {
  visual_viewport_set_onresize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onresize)),
  )
}

///|
/// [VisualViewport.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscroll)
impl TVisualViewport with onscroll(self : Self) -> EventHandler {
  visual_viewport_onscroll_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.onscroll](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscroll)
impl TVisualViewport with set_onscroll(
  self : Self,
  onscroll : (Event) -> JsValue,
) -> Unit {
  visual_viewport_set_onscroll_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscroll)),
  )
}

///|
/// [VisualViewport.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscrollend)
impl TVisualViewport with onscrollend(self : Self) -> EventHandler {
  visual_viewport_onscrollend_ffi(TJsValue::to_js(self))
}

///|
/// [VisualViewport.onscrollend](https://developer.mozilla.org/en-US/docs/Web/API/VisualViewport/onscrollend)
impl TVisualViewport with set_onscrollend(
  self : Self,
  onscrollend : (Event) -> JsValue,
) -> Unit {
  visual_viewport_set_onscrollend_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onscrollend)),
  )
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_offset_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
#cfg(target="js")
fn visual_viewport_offset_left_ffi(obj : JsValue) -> Double {
  visual_viewport_offset_left_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_offset_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
#cfg(target="js")
fn visual_viewport_offset_top_ffi(obj : JsValue) -> Double {
  visual_viewport_offset_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_page_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageLeft"

///|
#cfg(target="js")
fn visual_viewport_page_left_ffi(obj : JsValue) -> Double {
  visual_viewport_page_left_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_page_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageTop"

///|
#cfg(target="js")
fn visual_viewport_page_top_ffi(obj : JsValue) -> Double {
  visual_viewport_page_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn visual_viewport_width_ffi(obj : JsValue) -> Double {
  visual_viewport_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn visual_viewport_height_ffi(obj : JsValue) -> Double {
  visual_viewport_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_scale_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scale"

///|
#cfg(target="js")
fn visual_viewport_scale_ffi(obj : JsValue) -> Double {
  visual_viewport_scale_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
#cfg(target="js")
fn visual_viewport_onresize_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onresize_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
#cfg(target="js")
extern "js" fn visual_viewport_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
#cfg(target="js")
fn visual_viewport_onscroll_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscroll_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
#cfg(target="js")
extern "js" fn visual_viewport_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
#cfg(target="js")
fn visual_viewport_onscrollend_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn visual_viewport_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"

///|
#cfg(target="wasm-gc")
fn visual_viewport_offset_left_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_offsetLeft"

///|
#cfg(target="wasm-gc")
fn visual_viewport_offset_top_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_offsetTop"

///|
#cfg(target="wasm-gc")
fn visual_viewport_page_left_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_pageLeft"

///|
#cfg(target="wasm-gc")
fn visual_viewport_page_top_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_pageTop"

///|
#cfg(target="wasm-gc")
fn visual_viewport_width_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_width"

///|
#cfg(target="wasm-gc")
fn visual_viewport_height_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_height"

///|
#cfg(target="wasm-gc")
fn visual_viewport_scale_ffi(obj : JsValue) -> Double = "webapi_VisualViewport" "get_scale"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onresize_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VisualViewport" "get_onresize"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onresize_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onresize_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn visual_viewport_set_onresize_ffi(obj : JsValue, onresize : JsValue) -> Unit = "webapi_VisualViewport" "set_onresize"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onscroll_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VisualViewport" "get_onscroll"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onscroll_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscroll_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn visual_viewport_set_onscroll_ffi(obj : JsValue, onscroll : JsValue) -> Unit = "webapi_VisualViewport" "set_onscroll"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onscrollend_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VisualViewport" "get_onscrollend"

///|
#cfg(target="wasm-gc")
fn visual_viewport_onscrollend_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscrollend_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn visual_viewport_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "webapi_VisualViewport" "set_onscrollend"
