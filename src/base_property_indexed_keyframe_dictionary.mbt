// Do not edit. This file is generated.
// MoonBit type: BasePropertyIndexedKeyframe
// Specifications: web-animations.idl

/// [BasePropertyIndexedKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BasePropertyIndexedKeyframe)
#external
pub type BasePropertyIndexedKeyframe

pub impl TJsValue for BasePropertyIndexedKeyframe with to_js(self: BasePropertyIndexedKeyframe) -> JsValue = "%identity"

pub impl FromJsAny for BasePropertyIndexedKeyframe with from_js_any(value : JsAny) -> BasePropertyIndexedKeyframe = "%identity"

pub(open) trait TBasePropertyIndexedKeyframeNewOffset : TJsValue {}

pub impl TBasePropertyIndexedKeyframeNewOffset for Double

pub impl TBasePropertyIndexedKeyframeNewOffset for Array[Double]

pub(open) trait TBasePropertyIndexedKeyframeNewEasing : TJsValue {}

pub impl TBasePropertyIndexedKeyframeNewEasing for String

pub impl TBasePropertyIndexedKeyframeNewEasing for Array[String]

pub(open) trait TBasePropertyIndexedKeyframeNewComposite : TJsValue {}

pub impl TBasePropertyIndexedKeyframeNewComposite for CompositeOperationOrAuto

pub impl TBasePropertyIndexedKeyframeNewComposite for Array[CompositeOperationOrAuto]

pub fn BasePropertyIndexedKeyframe::new(offset? : &TBasePropertyIndexedKeyframeNewOffset, 
easing? : &TBasePropertyIndexedKeyframeNewEasing, 
composite? : &TBasePropertyIndexedKeyframeNewComposite) -> BasePropertyIndexedKeyframe {
  base_property_indexed_keyframe_ffi(match offset {
Some(v) => v.to_js()
None => JsValue::undefined()
}, match easing {
Some(v) => v.to_js()
None => JsValue::undefined()
}, match composite {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn BasePropertyIndexedKeyframe::empty() -> BasePropertyIndexedKeyframe { base_property_indexed_keyframe_empty_ffi() }

pub(open) trait TBasePropertyIndexedKeyframeGetOffset : TJsValue {}

pub impl TBasePropertyIndexedKeyframeGetOffset for Double

pub impl TBasePropertyIndexedKeyframeGetOffset for Array[Double]

#external
pub type BasePropertyIndexedKeyframeGetOffset

pub impl TJsValue for BasePropertyIndexedKeyframeGetOffset with to_js(self: BasePropertyIndexedKeyframeGetOffset) -> JsValue = "%identity"

pub impl FromJsAny for BasePropertyIndexedKeyframeGetOffset with from_js_any(value : JsAny) -> BasePropertyIndexedKeyframeGetOffset = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TBasePropertyIndexedKeyframeGetOffset + FromJsAny] BasePropertyIndexedKeyframeGetOffset::into(self : BasePropertyIndexedKeyframeGetOffset) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetOffset + FromJsAny] BasePropertyIndexedKeyframeGetOffset::unsafe_into(self : BasePropertyIndexedKeyframeGetOffset) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetOffset] BasePropertyIndexedKeyframeGetOffset::from(value : T) -> BasePropertyIndexedKeyframeGetOffset = "%identity"

pub impl TBasePropertyIndexedKeyframeGetOffset for BasePropertyIndexedKeyframeGetOffset

pub(open) trait TBasePropertyIndexedKeyframeGetEasing : TJsValue {}

pub impl TBasePropertyIndexedKeyframeGetEasing for String

pub impl TBasePropertyIndexedKeyframeGetEasing for Array[String]

#external
pub type BasePropertyIndexedKeyframeGetEasing

pub impl TJsValue for BasePropertyIndexedKeyframeGetEasing with to_js(self: BasePropertyIndexedKeyframeGetEasing) -> JsValue = "%identity"

pub impl FromJsAny for BasePropertyIndexedKeyframeGetEasing with from_js_any(value : JsAny) -> BasePropertyIndexedKeyframeGetEasing = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TBasePropertyIndexedKeyframeGetEasing + FromJsAny] BasePropertyIndexedKeyframeGetEasing::into(self : BasePropertyIndexedKeyframeGetEasing) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetEasing + FromJsAny] BasePropertyIndexedKeyframeGetEasing::unsafe_into(self : BasePropertyIndexedKeyframeGetEasing) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetEasing] BasePropertyIndexedKeyframeGetEasing::from(value : T) -> BasePropertyIndexedKeyframeGetEasing = "%identity"

pub impl TBasePropertyIndexedKeyframeGetEasing for BasePropertyIndexedKeyframeGetEasing

pub(open) trait TBasePropertyIndexedKeyframeGetComposite : TJsValue {}

pub impl TBasePropertyIndexedKeyframeGetComposite for CompositeOperationOrAuto

pub impl TBasePropertyIndexedKeyframeGetComposite for Array[CompositeOperationOrAuto]

#external
pub type BasePropertyIndexedKeyframeGetComposite

pub impl TJsValue for BasePropertyIndexedKeyframeGetComposite with to_js(self: BasePropertyIndexedKeyframeGetComposite) -> JsValue = "%identity"

pub impl FromJsAny for BasePropertyIndexedKeyframeGetComposite with from_js_any(value : JsAny) -> BasePropertyIndexedKeyframeGetComposite = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TBasePropertyIndexedKeyframeGetComposite + FromJsAny] BasePropertyIndexedKeyframeGetComposite::into(self : BasePropertyIndexedKeyframeGetComposite) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetComposite + FromJsAny] BasePropertyIndexedKeyframeGetComposite::unsafe_into(self : BasePropertyIndexedKeyframeGetComposite) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBasePropertyIndexedKeyframeGetComposite] BasePropertyIndexedKeyframeGetComposite::from(value : T) -> BasePropertyIndexedKeyframeGetComposite = "%identity"

pub impl TBasePropertyIndexedKeyframeGetComposite for BasePropertyIndexedKeyframeGetComposite

pub fn BasePropertyIndexedKeyframe::offset(self : BasePropertyIndexedKeyframe) -> BasePropertyIndexedKeyframeGetOffset? {
  base_property_indexed_keyframe_get_offset_ffi(TJsValue::to_js(self)).to_option()
}

pub fn BasePropertyIndexedKeyframe::easing(self : BasePropertyIndexedKeyframe) -> BasePropertyIndexedKeyframeGetEasing? {
  base_property_indexed_keyframe_get_easing_ffi(TJsValue::to_js(self)).to_option()
}

pub fn BasePropertyIndexedKeyframe::composite(self : BasePropertyIndexedKeyframe) -> BasePropertyIndexedKeyframeGetComposite? {
  base_property_indexed_keyframe_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn base_property_indexed_keyframe_ffi(offset: JsValue, easing: JsValue, composite: JsValue) -> BasePropertyIndexedKeyframe = 
#|(offset, easing, composite) => {
#|  const obj = {};
#|  if (offset !== undefined) obj.offset = offset;
#|  if (easing !== undefined) obj.easing = easing;
#|  if (composite !== undefined) obj.composite = composite;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn base_property_indexed_keyframe_empty_ffi() -> BasePropertyIndexedKeyframe = "() => {}"

#cfg(target="js")
extern "js" fn base_property_indexed_keyframe_get_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offset"

#cfg(target="js")
extern "js" fn base_property_indexed_keyframe_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"

#cfg(target="js")
extern "js" fn base_property_indexed_keyframe_get_composite_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composite"

#cfg(target="wasm-gc")
fn base_property_indexed_keyframe_ffi(offset: JsValue, easing: JsValue, composite: JsValue) -> BasePropertyIndexedKeyframe = "webapi_BasePropertyIndexedKeyframe" "new"

#cfg(target="wasm-gc")
fn base_property_indexed_keyframe_empty_ffi() -> BasePropertyIndexedKeyframe = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn base_property_indexed_keyframe_get_offset_ffi(obj: JsValue) -> JsValue = "webapi_BasePropertyIndexedKeyframe" "get_offset"

#cfg(target="wasm-gc")
fn base_property_indexed_keyframe_get_easing_ffi(obj: JsValue) -> JsValue = "webapi_BasePropertyIndexedKeyframe" "get_easing"

#cfg(target="wasm-gc")
fn base_property_indexed_keyframe_get_composite_ffi(obj: JsValue) -> JsValue = "webapi_BasePropertyIndexedKeyframe" "get_composite"