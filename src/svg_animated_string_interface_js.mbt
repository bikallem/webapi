extern "js" fn svg_animated_string_base_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
fn svg_animated_string_base_val_ffi(obj: JsValue) -> SVGAnimatedStringBaseVal {
  svg_animated_string_base_val_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_animated_string_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

extern "js" fn svg_animated_string_anim_val_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animVal"

///|
fn svg_animated_string_anim_val_ffi(obj: JsValue) -> String {
  svg_animated_string_anim_val_ffi_js(obj).unsafe_cast()
}