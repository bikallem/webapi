///|
extern "js" fn svg_animated_rect_base_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
fn svg_animated_rect_base_val_ffi(obj : JsValue) -> DOMRect {
  svg_animated_rect_base_val_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_animated_rect_anim_val_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.animVal"

///|
fn svg_animated_rect_anim_val_ffi(obj : JsValue) -> DOMRectReadOnly {
  svg_animated_rect_anim_val_ffi_js(obj).unsafe_cast()
}
