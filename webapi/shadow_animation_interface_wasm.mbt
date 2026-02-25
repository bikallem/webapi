///|
fn shadow_animation_new_ffi(
  source : JsValue,
  new_target : JsValue,
) -> ShadowAnimation = "webapi_ShadowAnimation" "new"

///|
fn shadow_animation_source_animation_ffi(obj : JsValue) -> Animation = "webapi_ShadowAnimation" "get_sourceAnimation"
