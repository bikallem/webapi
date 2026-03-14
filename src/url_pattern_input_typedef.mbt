// Do not edit. This file is generated.
// MoonBit type: URLPatternInput
// Specifications: urlpattern.idl

/// [URLPatternInput](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternInput)
#external
pub type URLPatternInput

pub impl TJsValue for URLPatternInput with to_js(self: URLPatternInput) -> JsValue = "%identity"

pub impl FromJsAny for URLPatternInput with from_js_any(value : JsAny) -> URLPatternInput = "%identity"

pub(open) trait TURLPatternInput : TJsValue {}

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TURLPatternInput + FromJsAny] URLPatternInput::into(self : URLPatternInput) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TURLPatternInput + FromJsAny] URLPatternInput::unsafe_into(self : URLPatternInput) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TURLPatternInput] URLPatternInput::from(value : T) -> URLPatternInput = "%identity"

pub impl TURLPatternInput for URLPatternInput

pub impl TURLPatternInput for String

pub impl TURLPatternInput for URLPatternInit