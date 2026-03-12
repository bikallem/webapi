// Do not edit. This file is generated.
// MoonBit type: KeyframeEffect
// Specifications: web-animations.idl

///|
/// [KeyframeEffect](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect)
#external
pub type KeyframeEffect

///|
pub impl TJsValue for KeyframeEffect with to_js(self : KeyframeEffect) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeEffect with from_js_any(value : JsAny) -> KeyframeEffect = "%identity"

///|
pub fn[T : TKeyframeEffect] KeyframeEffect::into(self : KeyframeEffect) -> T = "%identity"

///|
pub impl TKeyframeEffect for KeyframeEffect

///|
pub impl TAnimationEffect for KeyframeEffect

///|
pub(open) trait TKeyframeEffectNewOptions: TJsValue {}

///|
pub impl TKeyframeEffectNewOptions for Double

///|
pub impl TKeyframeEffectNewOptions for KeyframeEffectOptions

///|
pub fn KeyframeEffect::new(
  target : &TElement,
  keyframes : JsValue,
  options? : &TKeyframeEffectNewOptions,
) -> KeyframeEffect {
  keyframe_effect_new_ffi(
    TJsValue::to_js(target),
    TJsValue::to_js(keyframes),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn KeyframeEffect::new_2(source : &TKeyframeEffect) -> KeyframeEffect {
  keyframe_effect_new_2_ffi(TJsValue::to_js(source))
}

///|
/// [KeyframeEffect](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect) interface.
pub trait TKeyframeEffect: TAnimationEffect {
  target(self : Self) -> Element = _
  set_target(self : Self, target : &TElement) -> Unit = _
  pseudo_element(self : Self) -> CSSOMString = _
  set_pseudo_element(self : Self, pseudo_element : CSSOMString) -> Unit = _
  composite(self : Self) -> CompositeOperation = _
  set_composite(self : Self, composite : CompositeOperation) -> Unit = _
  get_keyframes(self : Self) -> Array[JsValue] = _
  set_keyframes(self : Self, keyframes : JsValue) -> Unit = _
}

///|
/// [KeyframeEffect.target](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/target)
impl TKeyframeEffect with target(self : Self) -> Element {
  keyframe_effect_target_ffi(TJsValue::to_js(self))
}

///|
/// [KeyframeEffect.target](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/target)
impl TKeyframeEffect with set_target(self : Self, target : &TElement) -> Unit {
  keyframe_effect_set_target_ffi(TJsValue::to_js(self), TJsValue::to_js(target))
}

///|
/// [KeyframeEffect.pseudoElement](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/pseudoElement)
impl TKeyframeEffect with pseudo_element(self : Self) -> CSSOMString {
  keyframe_effect_pseudo_element_ffi(TJsValue::to_js(self))
}

///|
/// [KeyframeEffect.pseudoElement](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/pseudoElement)
impl TKeyframeEffect with set_pseudo_element(
  self : Self,
  pseudo_element : CSSOMString,
) -> Unit {
  keyframe_effect_set_pseudo_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pseudo_element),
  )
}

///|
/// [KeyframeEffect.composite](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/composite)
impl TKeyframeEffect with composite(self : Self) -> CompositeOperation {
  keyframe_effect_composite_ffi(TJsValue::to_js(self))
}

///|
/// [KeyframeEffect.composite](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/composite)
impl TKeyframeEffect with set_composite(
  self : Self,
  composite : CompositeOperation,
) -> Unit {
  keyframe_effect_set_composite_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(composite),
  )
}

///|
/// [KeyframeEffect.getKeyframes](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/getKeyframes)
impl TKeyframeEffect with get_keyframes(self : Self) -> Array[JsValue] {
  keyframe_effect_get_keyframes_ffi(TJsValue::to_js(self))
}

///|
/// [KeyframeEffect.setKeyframes](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffect/setKeyframes)
impl TKeyframeEffect with set_keyframes(self : Self, keyframes : JsValue) -> Unit {
  keyframe_effect_set_keyframes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(keyframes),
  )
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_new_ffi(
  target : JsValue,
  keyframes : JsValue,
  options : JsValue,
) -> KeyframeEffect = "(target, keyframes, options) => new KeyframeEffect(target, keyframes, options)"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_new_2_ffi(source : JsValue) -> KeyframeEffect = "(source) => new KeyframeEffect(source)"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn keyframe_effect_target_ffi(obj : JsValue) -> Element {
  keyframe_effect_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_pseudo_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pseudoElement"

///|
#cfg(target="js")
fn keyframe_effect_pseudo_element_ffi(obj : JsValue) -> CSSOMString {
  keyframe_effect_pseudo_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_set_pseudo_element_ffi(
  obj : JsValue,
  pseudo_element : JsValue,
) -> Unit = "(obj, pseudoElement) => { obj.pseudoElement = pseudoElement; }"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_composite_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composite"

///|
#cfg(target="js")
fn keyframe_effect_composite_ffi(obj : JsValue) -> CompositeOperation {
  CompositeOperation::from_unchecked(
    keyframe_effect_composite_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_set_composite_ffi(
  obj : JsValue,
  composite : JsValue,
) -> Unit = "(obj, composite) => { obj.composite = composite; }"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_get_keyframes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getKeyframes()"

///|
#cfg(target="js")
fn keyframe_effect_get_keyframes_ffi(obj : JsValue) -> Array[JsValue] {
  keyframe_effect_get_keyframes_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_set_keyframes_ffi(
  obj : JsValue,
  keyframes : JsValue,
) -> Unit = "(obj, keyframes) => obj.setKeyframes(keyframes)"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_new_ffi(
  target : JsValue,
  keyframes : JsValue,
  options : JsValue,
) -> KeyframeEffect = "webapi_KeyframeEffect" "new"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_new_2_ffi(source : JsValue) -> KeyframeEffect = "webapi_KeyframeEffect" "new_2"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_target_ffi(obj : JsValue) -> Element = "webapi_KeyframeEffect" "get_target"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_set_target_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_KeyframeEffect" "set_target"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_pseudo_element_ffi_wasm(obj : JsValue) -> JsValue = "webapi_KeyframeEffect" "get_pseudoElement"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_pseudo_element_ffi(obj : JsValue) -> CSSOMString {
  keyframe_effect_pseudo_element_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn keyframe_effect_set_pseudo_element_ffi(
  obj : JsValue,
  pseudo_element : JsValue,
) -> Unit = "webapi_KeyframeEffect" "set_pseudoElement"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_composite_ffi_wasm(obj : JsValue) -> JsValue = "webapi_KeyframeEffect" "get_composite"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_composite_ffi(obj : JsValue) -> CompositeOperation {
  CompositeOperation::from_unchecked(
    jsvalue_to_string(keyframe_effect_composite_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn keyframe_effect_set_composite_ffi(
  obj : JsValue,
  composite : JsValue,
) -> Unit = "webapi_KeyframeEffect" "set_composite"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_get_keyframes_ffi_wasm(obj : JsValue) -> JsArray = "webapi_KeyframeEffect" "getKeyframes"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_get_keyframes_ffi(obj : JsValue) -> Array[JsValue] {
  keyframe_effect_get_keyframes_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn keyframe_effect_set_keyframes_ffi(
  obj : JsValue,
  keyframes : JsValue,
) -> Unit = "webapi_KeyframeEffect" "setKeyframes"
