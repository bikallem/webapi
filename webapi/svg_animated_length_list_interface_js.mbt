extern "js" fn svg_animated_length_list_base_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
fn svg_animated_length_list_base_val_ffi(obj: JsValue) -> SVGLengthList {
  svg_animated_length_list_base_val_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_animated_length_list_anim_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animVal"

///|
fn svg_animated_length_list_anim_val_ffi(obj: JsValue) -> SVGLengthList {
  svg_animated_length_list_anim_val_ffi_js(obj).unsafe_cast()
}