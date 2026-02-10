// Do not edit. This file is generated.
// MoonBit type: TrustedHTML
// Specifications: trusted-types.idl

///|
/// [TrustedHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML)
#external
pub type TrustedHTML

///|
pub impl TJsValue for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub fn[T : TTrustedHTML] TrustedHTML::into(self : TrustedHTML) -> T = "%identity"

///|
pub impl TTrustedHTML for TrustedHTML

///|
/// [TrustedHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML) interface.
pub trait TTrustedHTML: TJsValue {
  to_json(self : Self) -> String = _
}

///|
/// [TrustedHTML.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML/toJSON)
impl TTrustedHTML with to_json(self : Self) -> String {
  trusted_html_to_json_ffi(TJsValue::to_js(self))
}
