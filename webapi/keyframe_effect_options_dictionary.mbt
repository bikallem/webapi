// Do not edit. This file is generated.
// MoonBit type: KeyframeEffectOptions
// Specifications: web-animations.idl

///|
/// [KeyframeEffectOptions](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffectOptions)
#external
pub type KeyframeEffectOptions

///|
pub impl TJsValue for KeyframeEffectOptions with to_js(
  self : KeyframeEffectOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeEffectOptions with from_js_any(value : JsAny) -> KeyframeEffectOptions = "%identity"

///|
pub(open) trait TKeyframeEffectOptionsNewDuration: TJsValue {}

///|
pub impl TKeyframeEffectOptionsNewDuration for Double

///|
pub impl TKeyframeEffectOptionsNewDuration for String

///|
pub fn KeyframeEffectOptions::new(
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  direction? : PlaybackDirection,
  easing? : String,
  delay? : Double,
  end_delay? : Double,
  duration? : &TKeyframeEffectOptionsNewDuration,
  composite? : CompositeOperation,
  pseudo_element? : CSSOMString,
) -> KeyframeEffectOptions {
  keyframe_effect_options_ffi(
    opt_to_js(fill),
    opt_to_js(iteration_start),
    opt_to_js(iterations),
    opt_to_js(direction),
    opt_to_js(easing),
    opt_to_js(delay),
    opt_to_js(end_delay),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(composite),
    opt_to_js(pseudo_element),
  )
}

///|
pub fn KeyframeEffectOptions::empty() -> KeyframeEffectOptions {
  keyframe_effect_options_empty_ffi()
}

///|
pub(open) trait TKeyframeEffectOptionsGetDuration: TJsValue {}

///|
pub impl TKeyframeEffectOptionsGetDuration for Double

///|
pub impl TKeyframeEffectOptionsGetDuration for String

///|
#external
pub type KeyframeEffectOptionsGetDuration

///|
pub impl TJsValue for KeyframeEffectOptionsGetDuration with to_js(
  self : KeyframeEffectOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeEffectOptionsGetDuration with from_js_any(
  value : JsAny,
) -> KeyframeEffectOptionsGetDuration = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TKeyframeEffectOptionsGetDuration + FromJsAny] KeyframeEffectOptionsGetDuration::into(
  self : KeyframeEffectOptionsGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TKeyframeEffectOptionsGetDuration + FromJsAny] KeyframeEffectOptionsGetDuration::unsafe_into(
  self : KeyframeEffectOptionsGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TKeyframeEffectOptionsGetDuration] KeyframeEffectOptionsGetDuration::from(
  value : T,
) -> KeyframeEffectOptionsGetDuration = "%identity"

///|
pub impl TKeyframeEffectOptionsGetDuration for KeyframeEffectOptionsGetDuration

///|
pub fn KeyframeEffectOptions::fill(self : KeyframeEffectOptions) -> FillMode? {
  keyframe_effect_options_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::iteration_start(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::iterations(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::direction(
  self : KeyframeEffectOptions,
) -> PlaybackDirection? {
  keyframe_effect_options_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::easing(self : KeyframeEffectOptions) -> String? {
  keyframe_effect_options_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::delay(self : KeyframeEffectOptions) -> Double? {
  keyframe_effect_options_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::end_delay(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::duration(
  self : KeyframeEffectOptions,
) -> KeyframeEffectOptionsGetDuration? {
  keyframe_effect_options_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::composite(
  self : KeyframeEffectOptions,
) -> CompositeOperation? {
  keyframe_effect_options_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::pseudo_element(
  self : KeyframeEffectOptions,
) -> CSSOMString? {
  keyframe_effect_options_get_pseudo_element_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  delay : JsValue,
  end_delay : JsValue,
  duration : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
) -> KeyframeEffectOptions =
  #|(fill, iterationStart, iterations, direction, easing, delay, endDelay, duration, composite, pseudoElement) => {
  #|  const obj = {};
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (delay !== undefined) obj.delay = delay;
  #|  if (endDelay !== undefined) obj.endDelay = endDelay;
  #|  if (duration !== undefined) obj.duration = duration;
  #|  if (composite !== undefined) obj.composite = composite;
  #|  if (pseudoElement !== undefined) obj.pseudoElement = pseudoElement;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_empty_ffi() -> KeyframeEffectOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_fill_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fill"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_iteration_start_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterationStart"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_iterations_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterations"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_direction_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_delay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.delay"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_end_delay_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.endDelay"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_duration_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.duration"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_composite_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composite"

///|
#cfg(target="js")
extern "js" fn keyframe_effect_options_get_pseudo_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pseudoElement"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  delay : JsValue,
  end_delay : JsValue,
  duration : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
) -> KeyframeEffectOptions = "webapi_KeyframeEffectOptions" "new"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_empty_ffi() -> KeyframeEffectOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_fill"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_iterationStart"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_iterations"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_direction"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_easing"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_delay_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_delay"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_end_delay_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_endDelay"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_duration_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_duration"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_composite_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_composite"

///|
#cfg(target="wasm-gc")
fn keyframe_effect_options_get_pseudo_element_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeEffectOptions" "get_pseudoElement"
