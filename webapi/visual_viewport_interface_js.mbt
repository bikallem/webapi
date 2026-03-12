///|
extern "js" fn visual_viewport_offset_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
fn visual_viewport_offset_left_ffi(obj : JsValue) -> Double {
  visual_viewport_offset_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_offset_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
fn visual_viewport_offset_top_ffi(obj : JsValue) -> Double {
  visual_viewport_offset_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_page_left_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageLeft"

///|
fn visual_viewport_page_left_ffi(obj : JsValue) -> Double {
  visual_viewport_page_left_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_page_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageTop"

///|
fn visual_viewport_page_top_ffi(obj : JsValue) -> Double {
  visual_viewport_page_top_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn visual_viewport_width_ffi(obj : JsValue) -> Double {
  visual_viewport_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn visual_viewport_height_ffi(obj : JsValue) -> Double {
  visual_viewport_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_scale_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scale"

///|
fn visual_viewport_scale_ffi(obj : JsValue) -> Double {
  visual_viewport_scale_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_onresize_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
fn visual_viewport_onresize_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onresize_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn visual_viewport_onscroll_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
fn visual_viewport_onscroll_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscroll_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn visual_viewport_onscrollend_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
fn visual_viewport_onscrollend_ffi(obj : JsValue) -> EventHandler {
  visual_viewport_onscrollend_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visual_viewport_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"
