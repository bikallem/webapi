///|
extern "js" fn visual_viewport_offset_left_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetLeft"

///|
extern "js" fn visual_viewport_offset_top_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offsetTop"

///|
extern "js" fn visual_viewport_page_left_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pageLeft"

///|
extern "js" fn visual_viewport_page_top_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pageTop"

///|
extern "js" fn visual_viewport_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn visual_viewport_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn visual_viewport_scale_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scale"

///|
extern "js" fn visual_viewport_onresize_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onresize"

///|
extern "js" fn visual_viewport_set_onresize_ffi(
  obj : JsValue,
  onresize : JsValue,
) -> Unit = "(obj, onresize) => { obj.onresize = onresize; }"

///|
extern "js" fn visual_viewport_onscroll_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscroll"

///|
extern "js" fn visual_viewport_set_onscroll_ffi(
  obj : JsValue,
  onscroll : JsValue,
) -> Unit = "(obj, onscroll) => { obj.onscroll = onscroll; }"

///|
extern "js" fn visual_viewport_onscrollend_ffi(obj : JsValue) -> JsValue = "(obj) => obj.onscrollend"

///|
extern "js" fn visual_viewport_set_onscrollend_ffi(
  obj : JsValue,
  onscrollend : JsValue,
) -> Unit = "(obj, onscrollend) => { obj.onscrollend = onscrollend; }"
