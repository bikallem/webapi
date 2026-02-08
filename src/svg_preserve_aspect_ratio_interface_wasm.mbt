///|
fn svg_preserve_aspect_ratio_align_ffi(obj : JsValue) -> JsValue = "webapi_SVGPreserveAspectRatio" "get_align"

///|
fn svg_preserve_aspect_ratio_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "webapi_SVGPreserveAspectRatio" "set_align"

///|
fn svg_preserve_aspect_ratio_meet_or_slice_ffi(obj : JsValue) -> JsValue = "webapi_SVGPreserveAspectRatio" "get_meetOrSlice"

///|
fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(
  obj : JsValue,
  meet_or_slice : JsValue,
) -> Unit = "webapi_SVGPreserveAspectRatio" "set_meetOrSlice"
