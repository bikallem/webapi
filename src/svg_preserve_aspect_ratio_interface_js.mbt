extern "js" fn svg_preserve_aspect_ratio_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn svg_preserve_aspect_ratio_align_ffi(obj: JsValue) -> UInt {
  svg_preserve_aspect_ratio_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_preserve_aspect_ratio_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn svg_preserve_aspect_ratio_meet_or_slice_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.meetOrSlice"

///|
fn svg_preserve_aspect_ratio_meet_or_slice_ffi(obj: JsValue) -> UInt {
  svg_preserve_aspect_ratio_meet_or_slice_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_preserve_aspect_ratio_set_meet_or_slice_ffi(obj: JsValue, meet_or_slice: JsValue) -> Unit = "(obj, meetOrSlice) => { obj.meetOrSlice = meetOrSlice; }"