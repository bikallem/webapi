///|
fn svg_animated_number_base_val_ffi(obj : JsValue) -> Float = "webapi_SVGAnimatedNumber" "get_baseVal"

///|
fn svg_animated_number_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "webapi_SVGAnimatedNumber" "set_baseVal"

///|
fn svg_animated_number_anim_val_ffi(obj : JsValue) -> Float = "webapi_SVGAnimatedNumber" "get_animVal"
