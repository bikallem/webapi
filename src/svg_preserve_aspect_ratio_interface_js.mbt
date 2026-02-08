///|
extern "js" fn svg_preserve_aspect_ratio_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn svg_preserve_aspect_ratio_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn svg_preserve_aspect_ratio_meet_or_slice_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.meetOrSlice"

///|
extern "js" fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
  obj : JsValue,
  meet_or_slice : JsValue,
) -> Unit = "(obj, meetOrSlice) => { obj.meetOrSlice = meetOrSlice; }"
