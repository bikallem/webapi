///|
extern "js" fn css_page_descriptors_margin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.margin"

///|
extern "js" fn css_page_descriptors_set_margin_ffi(
  obj : JsValue,
  margin : JsValue,
) -> Unit = "(obj, margin) => { obj.margin = margin; }"

///|
extern "js" fn css_page_descriptors_margin_top_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginTop"

///|
extern "js" fn css_page_descriptors_set_margin_top_ffi(
  obj : JsValue,
  margin_top : JsValue,
) -> Unit = "(obj, marginTop) => { obj.marginTop = marginTop; }"

///|
extern "js" fn css_page_descriptors_margin_right_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginRight"

///|
extern "js" fn css_page_descriptors_set_margin_right_ffi(
  obj : JsValue,
  margin_right : JsValue,
) -> Unit = "(obj, marginRight) => { obj.marginRight = marginRight; }"

///|
extern "js" fn css_page_descriptors_margin_bottom_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginBottom"

///|
extern "js" fn css_page_descriptors_set_margin_bottom_ffi(
  obj : JsValue,
  margin_bottom : JsValue,
) -> Unit = "(obj, marginBottom) => { obj.marginBottom = marginBottom; }"

///|
extern "js" fn css_page_descriptors_margin_left_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marginLeft"

///|
extern "js" fn css_page_descriptors_set_margin_left_ffi(
  obj : JsValue,
  margin_left : JsValue,
) -> Unit = "(obj, marginLeft) => { obj.marginLeft = marginLeft; }"

///|
extern "js" fn css_page_descriptors_size_ffi(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
extern "js" fn css_page_descriptors_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
extern "js" fn css_page_descriptors_page_orientation_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pageOrientation"

///|
extern "js" fn css_page_descriptors_set_page_orientation_ffi(
  obj : JsValue,
  page_orientation : JsValue,
) -> Unit = "(obj, pageOrientation) => { obj.pageOrientation = pageOrientation; }"

///|
extern "js" fn css_page_descriptors_marks_ffi(obj : JsValue) -> JsValue = "(obj) => obj.marks"

///|
extern "js" fn css_page_descriptors_set_marks_ffi(
  obj : JsValue,
  marks : JsValue,
) -> Unit = "(obj, marks) => { obj.marks = marks; }"

///|
extern "js" fn css_page_descriptors_bleed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bleed"

///|
extern "js" fn css_page_descriptors_set_bleed_ffi(
  obj : JsValue,
  bleed : JsValue,
) -> Unit = "(obj, bleed) => { obj.bleed = bleed; }"
