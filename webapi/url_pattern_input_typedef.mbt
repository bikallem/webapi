// Do not edit. This file is generated.
// MoonBit type: URLPatternInput
// Specifications: urlpattern.idl

///|
/// [URLPatternInput](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternInput)
#external
pub type URLPatternInput

///|
pub impl TJsValue for URLPatternInput with to_js(self : URLPatternInput) -> JsValue = "%identity"

///|
pub impl FromJsAny for URLPatternInput with from_js_any(value : JsAny) -> URLPatternInput = "%identity"

///|
pub(open) trait TURLPatternInput {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TURLPatternInput + FromJsAny] URLPatternInput::into(
  self : URLPatternInput,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TURLPatternInput] URLPatternInput::from(
  value : T,
) -> URLPatternInput = "%identity"

///|
pub impl TURLPatternInput for URLPatternInput with to_js(self : URLPatternInput) -> JsValue = "%identity"

///|
pub impl TURLPatternInput for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TURLPatternInput for URLPatternInit with to_js(self : URLPatternInit) -> JsValue = "%identity"
