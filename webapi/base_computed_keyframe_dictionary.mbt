// Do not edit. This file is generated.
// MoonBit type: BaseComputedKeyframe
// Specifications: web-animations.idl

///|
/// [BaseComputedKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BaseComputedKeyframe)
#external
pub type BaseComputedKeyframe

///|
pub impl TJsValue for BaseComputedKeyframe with to_js(
  self : BaseComputedKeyframe,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BaseComputedKeyframe with from_js_any(value : JsAny) -> BaseComputedKeyframe = "%identity"

///|
pub fn BaseComputedKeyframe::new(
  offset? : Double,
  computed_offset? : Double,
  easing? : String,
  composite? : CompositeOperationOrAuto,
) -> BaseComputedKeyframe {
  base_computed_keyframe_ffi(
    opt_to_js(offset),
    opt_to_js(computed_offset),
    opt_to_js(easing),
    opt_to_js(composite),
  )
}

///|
pub fn BaseComputedKeyframe::empty() -> BaseComputedKeyframe {
  base_computed_keyframe_empty_ffi()
}

///|
pub fn BaseComputedKeyframe::offset(self : BaseComputedKeyframe) -> Double? {
  base_computed_keyframe_get_offset_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn BaseComputedKeyframe::computed_offset(
  self : BaseComputedKeyframe,
) -> Double? {
  base_computed_keyframe_get_computed_offset_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn BaseComputedKeyframe::easing(self : BaseComputedKeyframe) -> String? {
  base_computed_keyframe_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn BaseComputedKeyframe::composite(
  self : BaseComputedKeyframe,
) -> CompositeOperationOrAuto? {
  base_computed_keyframe_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_ffi(
  offset : JsValue,
  computed_offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseComputedKeyframe =
  #|(offset, computedOffset, easing, composite) => {
  #|  const obj = {};
  #|  if (offset !== undefined) obj.offset = offset;
  #|  if (computedOffset !== undefined) obj.computedOffset = computedOffset;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (composite !== undefined) obj.composite = composite;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_empty_ffi() -> BaseComputedKeyframe = "() => {}"

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_get_offset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_get_computed_offset_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.computedOffset"

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"

///|
#cfg(target="js")
extern "js" fn base_computed_keyframe_get_composite_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composite"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_ffi(
  offset : JsValue,
  computed_offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseComputedKeyframe = "webapi_BaseComputedKeyframe" "new"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_empty_ffi() -> BaseComputedKeyframe = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_get_offset_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_offset"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_get_computed_offset_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_computedOffset"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_easing"

///|
#cfg(target="wasm-gc")
fn base_computed_keyframe_get_composite_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_composite"
