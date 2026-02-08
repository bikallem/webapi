///|
extern "js" fn html_frame_element_new_ffi() -> HTMLFrameElement = "() => new HTMLFrameElement()"

///|
extern "js" fn html_frame_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_frame_element_scrolling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scrolling"

///|
extern "js" fn html_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
extern "js" fn html_frame_element_src_ffi(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
extern "js" fn html_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
extern "js" fn html_frame_element_frame_border_ffi(obj : JsValue) -> JsValue = "(obj) => obj.frameBorder"

///|
extern "js" fn html_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frameBorder; }"

///|
extern "js" fn html_frame_element_long_desc_ffi(obj : JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
extern "js" fn html_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

///|
extern "js" fn html_frame_element_no_resize_ffi(obj : JsValue) -> JsValue = "(obj) => obj.noResize"

///|
extern "js" fn html_frame_element_set_no_resize_ffi(
  obj : JsValue,
  no_resize : JsValue,
) -> Unit = "(obj, noResize) => { obj.noResize = noResize; }"

///|
extern "js" fn html_frame_element_content_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
extern "js" fn html_frame_element_content_window_ffi(obj : JsValue) -> JsValue = "(obj) => obj.contentWindow"

///|
extern "js" fn html_frame_element_margin_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginHeight"

///|
extern "js" fn html_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = marginHeight; }"

///|
extern "js" fn html_frame_element_margin_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginWidth"

///|
extern "js" fn html_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = marginWidth; }"
