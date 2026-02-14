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
