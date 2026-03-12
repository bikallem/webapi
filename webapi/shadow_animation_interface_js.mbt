extern "js" fn shadow_animation_new_ffi(source: JsValue, new_target: JsValue) -> ShadowAnimation = "(source, new_target) => new ShadowAnimation(source, new_target)"

extern "js" fn shadow_animation_source_animation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sourceAnimation"

///|
fn shadow_animation_source_animation_ffi(obj: JsValue) -> Animation {
  shadow_animation_source_animation_ffi_js(obj).unsafe_cast()
}