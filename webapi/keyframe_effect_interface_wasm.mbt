///|
fn keyframe_effect_new_ffi(
  target : JsValue,
  keyframes : JsValue,
  options : JsValue,
) -> KeyframeEffect = "webapi_KeyframeEffect" "new"

///|
fn keyframe_effect_new_2_ffi(source : JsValue) -> KeyframeEffect = "webapi_KeyframeEffect" "new"

///|
fn keyframe_effect_target_ffi(obj : JsValue) -> Element = "webapi_KeyframeEffect" "get_target"

///|
fn keyframe_effect_set_target_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_KeyframeEffect" "set_target"

///|
fn keyframe_effect_pseudo_element_ffi_wasm(obj : JsValue) -> JsValue = "webapi_KeyframeEffect" "get_pseudoElement"

///|
fn keyframe_effect_pseudo_element_ffi(obj : JsValue) -> CSSOMString {
  keyframe_effect_pseudo_element_ffi_wasm(obj).unsafe_cast()
}

///|
fn keyframe_effect_set_pseudo_element_ffi(
  obj : JsValue,
  pseudo_element : JsValue,
) -> Unit = "webapi_KeyframeEffect" "set_pseudoElement"

///|
fn keyframe_effect_composite_ffi_wasm(obj : JsValue) -> JsValue = "webapi_KeyframeEffect" "get_composite"

///|
fn keyframe_effect_composite_ffi(obj : JsValue) -> CompositeOperation {
  CompositeOperation::from_unchecked(
    jsvalue_to_string(keyframe_effect_composite_ffi_wasm(obj)),
  )
}

///|
fn keyframe_effect_set_composite_ffi(
  obj : JsValue,
  composite : JsValue,
) -> Unit = "webapi_KeyframeEffect" "set_composite"

///|
fn keyframe_effect_get_keyframes_ffi_wasm(obj : JsValue) -> JsArray = "webapi_KeyframeEffect" "getKeyframes"

///|
fn keyframe_effect_get_keyframes_ffi(obj : JsValue) -> Array[JsValue] {
  keyframe_effect_get_keyframes_ffi_wasm(obj).to_array()
}

///|
fn keyframe_effect_set_keyframes_ffi(
  obj : JsValue,
  keyframes : JsValue,
) -> Unit = "webapi_KeyframeEffect" "setKeyframes"
