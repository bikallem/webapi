///|
extern "js" fn htmli_frame_element_new_ffi() -> HTMLIFrameElement = "() => new HTMLIFrameElement()"

///|
extern "js" fn htmli_frame_element_src_ffi(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
extern "js" fn htmli_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
extern "js" fn htmli_frame_element_srcdoc_ffi(obj : JsValue) -> JsValue = "(obj) => obj.srcdoc"

///|
extern "js" fn htmli_frame_element_set_srcdoc_ffi(
  obj : JsValue,
  srcdoc : JsValue,
) -> Unit = "(obj, srcdoc) => { obj.srcdoc = srcdoc; }"

///|
extern "js" fn htmli_frame_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn htmli_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> JsValue = "(obj) => obj.sandbox"

///|
extern "js" fn htmli_frame_element_allow_ffi(obj : JsValue) -> JsValue = "(obj) => obj.allow"

///|
extern "js" fn htmli_frame_element_set_allow_ffi(
  obj : JsValue,
  allow : JsValue,
) -> Unit = "(obj, allow) => { obj.allow = allow; }"

///|
extern "js" fn htmli_frame_element_allow_fullscreen_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.allowFullscreen"

///|
extern "js" fn htmli_frame_element_set_allow_fullscreen_ffi(
  obj : JsValue,
  allow_fullscreen : JsValue,
) -> Unit = "(obj, allowFullscreen) => { obj.allowFullscreen = allowFullscreen; }"

///|
extern "js" fn htmli_frame_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn htmli_frame_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn htmli_frame_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn htmli_frame_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn htmli_frame_element_referrer_policy_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
extern "js" fn htmli_frame_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
extern "js" fn htmli_frame_element_loading_ffi(obj : JsValue) -> JsValue = "(obj) => obj.loading"

///|
extern "js" fn htmli_frame_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "(obj, loading) => { obj.loading = loading; }"

///|
extern "js" fn htmli_frame_element_content_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
extern "js" fn htmli_frame_element_content_window_ffi(obj : JsValue) -> JsValue = "(obj) => obj.contentWindow"

///|
extern "js" fn htmli_frame_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
extern "js" fn htmli_frame_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn htmli_frame_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scrolling"

///|
extern "js" fn htmli_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
extern "js" fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> JsValue = "(obj) => obj.frameBorder"

///|
extern "js" fn htmli_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frameBorder; }"

///|
extern "js" fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
extern "js" fn htmli_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

///|
extern "js" fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginHeight"

///|
extern "js" fn htmli_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = marginHeight; }"

///|
extern "js" fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginWidth"

///|
extern "js" fn htmli_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = marginWidth; }"
