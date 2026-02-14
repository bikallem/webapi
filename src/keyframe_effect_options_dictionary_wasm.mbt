///|
fn keyframe_effect_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
) -> KeyframeEffectOptions = "webapi_KeyframeEffectOptions" "new"

///|
fn keyframe_effect_options_empty_ffi() -> KeyframeEffectOptions = "webapi_Dictionary" "empty"
