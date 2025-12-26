// Do not edit. This file is generated.
// MoonBit type: TrustedType
// Specifications: trusted-types.idl

///|
#external
pub type TrustedType

///|
pub impl TJsValue for TrustedType with to_js(self : TrustedType) -> JsValue = "%identity"

///|
pub(open) trait TTrustedType {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TTrustedType] TrustedType::into(self : TrustedType) -> T = "%identity"

///|
pub impl TTrustedType for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl TTrustedType for TrustedScript with to_js(self : TrustedScript) -> JsValue = "%identity"

///|
pub impl TTrustedType for TrustedScriptURL with to_js(self : TrustedScriptURL) -> JsValue = "%identity"
