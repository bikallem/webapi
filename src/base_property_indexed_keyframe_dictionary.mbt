// Do not edit. This file is generated.
// MoonBit type: BasePropertyIndexedKeyframe
// Specifications: web-animations.idl

///|
/// [BasePropertyIndexedKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BasePropertyIndexedKeyframe)
#external
pub type BasePropertyIndexedKeyframe

///|
pub impl TJsValue for BasePropertyIndexedKeyframe with to_js(
  self : BasePropertyIndexedKeyframe,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BasePropertyIndexedKeyframe with from_js_any(
  value : JsAny,
) -> BasePropertyIndexedKeyframe = "%identity"

///|
pub(open) trait TBasePropertyIndexedKeyframeNewOffset {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeNewOffset for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TBasePropertyIndexedKeyframeNewOffset for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

///|
pub(open) trait TBasePropertyIndexedKeyframeNewEasing {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeNewEasing for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeNewEasing for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
pub(open) trait TBasePropertyIndexedKeyframeNewComposite {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeNewComposite for CompositeOperationOrAuto with to_js(
  self : CompositeOperationOrAuto,
) -> JsValue = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeNewComposite for Array[
  CompositeOperationOrAuto,
] with to_js(self : Array[CompositeOperationOrAuto]) -> JsValue = "%identity"

///|
pub fn BasePropertyIndexedKeyframe::new(
  offset? : &TBasePropertyIndexedKeyframeNewOffset,
  easing? : &TBasePropertyIndexedKeyframeNewEasing,
  composite? : &TBasePropertyIndexedKeyframeNewComposite,
) -> BasePropertyIndexedKeyframe {
  base_property_indexed_keyframe_ffi(
    match offset {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    match easing {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    match composite {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn BasePropertyIndexedKeyframe::empty() -> BasePropertyIndexedKeyframe {
  base_property_indexed_keyframe_empty_ffi()
}

///|
pub(open) trait TBasePropertyIndexedKeyframeGetOffset {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeGetOffset for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TBasePropertyIndexedKeyframeGetOffset for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

///|
#external
pub type BasePropertyIndexedKeyframeGetOffset

///|
pub impl TJsValue for BasePropertyIndexedKeyframeGetOffset with to_js(
  self : BasePropertyIndexedKeyframeGetOffset,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BasePropertyIndexedKeyframeGetOffset with from_js_any(
  value : JsAny,
) -> BasePropertyIndexedKeyframeGetOffset = "%identity"

///|
pub fn[T : TBasePropertyIndexedKeyframeGetOffset + FromJsAny] BasePropertyIndexedKeyframeGetOffset::into(
  self : BasePropertyIndexedKeyframeGetOffset,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBasePropertyIndexedKeyframeGetOffset] BasePropertyIndexedKeyframeGetOffset::from(
  value : T,
) -> BasePropertyIndexedKeyframeGetOffset = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeGetOffset for BasePropertyIndexedKeyframeGetOffset with to_js(
  self : BasePropertyIndexedKeyframeGetOffset,
) -> JsValue = "%identity"

///|
pub(open) trait TBasePropertyIndexedKeyframeGetEasing {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeGetEasing for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeGetEasing for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
#external
pub type BasePropertyIndexedKeyframeGetEasing

///|
pub impl TJsValue for BasePropertyIndexedKeyframeGetEasing with to_js(
  self : BasePropertyIndexedKeyframeGetEasing,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BasePropertyIndexedKeyframeGetEasing with from_js_any(
  value : JsAny,
) -> BasePropertyIndexedKeyframeGetEasing = "%identity"

///|
pub fn[T : TBasePropertyIndexedKeyframeGetEasing + FromJsAny] BasePropertyIndexedKeyframeGetEasing::into(
  self : BasePropertyIndexedKeyframeGetEasing,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBasePropertyIndexedKeyframeGetEasing] BasePropertyIndexedKeyframeGetEasing::from(
  value : T,
) -> BasePropertyIndexedKeyframeGetEasing = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeGetEasing for BasePropertyIndexedKeyframeGetEasing with to_js(
  self : BasePropertyIndexedKeyframeGetEasing,
) -> JsValue = "%identity"

///|
pub(open) trait TBasePropertyIndexedKeyframeGetComposite {
  to_js(self : Self) -> JsValue
}

///|
pub impl TBasePropertyIndexedKeyframeGetComposite for CompositeOperationOrAuto with to_js(
  self : CompositeOperationOrAuto,
) -> JsValue = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeGetComposite for Array[
  CompositeOperationOrAuto,
] with to_js(self : Array[CompositeOperationOrAuto]) -> JsValue = "%identity"

///|
#external
pub type BasePropertyIndexedKeyframeGetComposite

///|
pub impl TJsValue for BasePropertyIndexedKeyframeGetComposite with to_js(
  self : BasePropertyIndexedKeyframeGetComposite,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BasePropertyIndexedKeyframeGetComposite with from_js_any(
  value : JsAny,
) -> BasePropertyIndexedKeyframeGetComposite = "%identity"

///|
pub fn[T : TBasePropertyIndexedKeyframeGetComposite + FromJsAny] BasePropertyIndexedKeyframeGetComposite::into(
  self : BasePropertyIndexedKeyframeGetComposite,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBasePropertyIndexedKeyframeGetComposite] BasePropertyIndexedKeyframeGetComposite::from(
  value : T,
) -> BasePropertyIndexedKeyframeGetComposite = "%identity"

///|
pub impl TBasePropertyIndexedKeyframeGetComposite for BasePropertyIndexedKeyframeGetComposite with to_js(
  self : BasePropertyIndexedKeyframeGetComposite,
) -> JsValue = "%identity"

///|
pub fn BasePropertyIndexedKeyframe::offset(
  self : BasePropertyIndexedKeyframe,
) -> BasePropertyIndexedKeyframeGetOffset? {
  let result = base_property_indexed_keyframe_get_offset_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn BasePropertyIndexedKeyframe::easing(
  self : BasePropertyIndexedKeyframe,
) -> BasePropertyIndexedKeyframeGetEasing? {
  let result = base_property_indexed_keyframe_get_easing_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn BasePropertyIndexedKeyframe::composite(
  self : BasePropertyIndexedKeyframe,
) -> BasePropertyIndexedKeyframeGetComposite? {
  let result = base_property_indexed_keyframe_get_composite_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
