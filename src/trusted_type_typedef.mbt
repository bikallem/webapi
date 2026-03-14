// Do not edit. This file is generated.
// MoonBit type: TrustedType
// Specifications: trusted-types.idl

///|
/// [TrustedType](https://developer.mozilla.org/en-US/docs/Web/API/TrustedType)
#external
pub type TrustedType

///|
pub impl TJsValue for TrustedType with to_js(self : TrustedType) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedType with from_js_any(value : JsAny) -> TrustedType = "%identity"

///|
pub(open) trait TTrustedType: TJsValue {}

///|
pub fn[T : TTrustedType + FromJsAny] TrustedType::into(self : TrustedType) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TTrustedType] TrustedType::from(value : T) -> TrustedType = "%identity"

///|
pub impl TTrustedType for TrustedType

///|
pub impl TTrustedType for TrustedHTML

///|
pub impl TTrustedType for TrustedScript

///|
pub impl TTrustedType for TrustedScriptURL
