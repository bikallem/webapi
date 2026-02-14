///|
extern "js" fn keyframe_effect_new_ffi(
  target : JsValue,
  keyframes : JsValue,
  options : JsValue,
) -> KeyframeEffect = "(target, keyframes, options) => new KeyframeEffect(target, keyframes, options)"

///|
extern "js" fn keyframe_effect_new_2_ffi(source : JsValue) -> KeyframeEffect = "(source) => new KeyframeEffect(source)"

///|
extern "js" fn keyframe_effect_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn keyframe_effect_target_ffi(obj : JsValue) -> Element {
  keyframe_effect_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn keyframe_effect_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
extern "js" fn keyframe_effect_pseudo_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pseudoElement"

///|
fn keyframe_effect_pseudo_element_ffi(obj : JsValue) -> CSSOMString {
  keyframe_effect_pseudo_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn keyframe_effect_set_pseudo_element_ffi(
  obj : JsValue,
  pseudo_element : JsValue,
) -> Unit = "(obj, pseudoElement) => { obj.pseudoElement = pseudoElement; }"

///|
extern "js" fn keyframe_effect_composite_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composite"

///|
fn keyframe_effect_composite_ffi(obj : JsValue) -> CompositeOperation {
  keyframe_effect_composite_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn keyframe_effect_set_composite_ffi(
  obj : JsValue,
  composite : JsValue,
) -> Unit = "(obj, composite) => { obj.composite = composite; }"

///|
extern "js" fn keyframe_effect_get_keyframes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getKeyframes()"

///|
fn keyframe_effect_get_keyframes_ffi(obj : JsValue) -> Array[JsValue] {
  keyframe_effect_get_keyframes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn keyframe_effect_set_keyframes_ffi(
  obj : JsValue,
  keyframes : JsValue,
) -> Unit = "(obj, keyframes) => obj.setKeyframes(keyframes)"
