// Do not edit. This file is generated.
// MoonBit type: URLPatternCompatible
// Specifications: urlpattern.idl

///|
/// [URLPatternCompatible](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternCompatible)
#external
pub type URLPatternCompatible

///|
pub impl TJsValue for URLPatternCompatible with to_js(
  self : URLPatternCompatible,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for URLPatternCompatible with from_js_any(value : JsAny) -> URLPatternCompatible = "%identity"

///|
pub(open) trait TURLPatternCompatible {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TURLPatternCompatible + FromJsAny] URLPatternCompatible::into(
  self : URLPatternCompatible,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TURLPatternCompatible] URLPatternCompatible::from(
  value : T,
) -> URLPatternCompatible = "%identity"

///|
pub impl TURLPatternCompatible for URLPatternCompatible with to_js(
  self : URLPatternCompatible,
) -> JsValue = "%identity"

///|
pub impl TURLPatternCompatible for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TURLPatternCompatible for URLPatternInit with to_js(
  self : URLPatternInit,
) -> JsValue = "%identity"

///|
pub impl TURLPatternCompatible for URLPattern with to_js(self : URLPattern) -> JsValue = "%identity"
