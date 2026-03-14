// Do not edit. This file is generated.
// MoonBit type: BaseKeyframe
// Specifications: web-animations.idl

/// [BaseKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BaseKeyframe)
#external
pub type BaseKeyframe

pub impl TJsValue for BaseKeyframe with to_js(self: BaseKeyframe) -> JsValue = "%identity"

pub impl FromJsAny for BaseKeyframe with from_js_any(value : JsAny) -> BaseKeyframe = "%identity"

pub fn BaseKeyframe::new(offset? : Double, 
easing? : String, 
composite? : CompositeOperationOrAuto) -> BaseKeyframe {
  base_keyframe_ffi(opt_to_js(offset), opt_to_js(easing), opt_to_js(composite))
}

pub fn BaseKeyframe::empty() -> BaseKeyframe { base_keyframe_empty_ffi() }

pub fn BaseKeyframe::offset(self : BaseKeyframe) -> Double? {
  base_keyframe_get_offset_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn BaseKeyframe::easing(self : BaseKeyframe) -> String? {
  base_keyframe_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn BaseKeyframe::composite(self : BaseKeyframe) -> CompositeOperationOrAuto? {
  base_keyframe_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn base_keyframe_ffi(offset: JsValue, easing: JsValue, composite: JsValue) -> BaseKeyframe = 
#|(offset, easing, composite) => {
#|  const obj = {};
#|  if (offset !== undefined) obj.offset = offset;
#|  if (easing !== undefined) obj.easing = easing;
#|  if (composite !== undefined) obj.composite = composite;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn base_keyframe_empty_ffi() -> BaseKeyframe = "() => {}"

#cfg(target="js")
extern "js" fn base_keyframe_get_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offset"

#cfg(target="js")
extern "js" fn base_keyframe_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"

#cfg(target="js")
extern "js" fn base_keyframe_get_composite_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composite"

#cfg(target="wasm-gc")
fn base_keyframe_ffi(offset: JsValue, easing: JsValue, composite: JsValue) -> BaseKeyframe = "webapi_BaseKeyframe" "new"

#cfg(target="wasm-gc")
fn base_keyframe_empty_ffi() -> BaseKeyframe = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn base_keyframe_get_offset_ffi(obj: JsValue) -> JsValue = "webapi_BaseKeyframe" "get_offset"

#cfg(target="wasm-gc")
fn base_keyframe_get_easing_ffi(obj: JsValue) -> JsValue = "webapi_BaseKeyframe" "get_easing"

#cfg(target="wasm-gc")
fn base_keyframe_get_composite_ffi(obj: JsValue) -> JsValue = "webapi_BaseKeyframe" "get_composite"