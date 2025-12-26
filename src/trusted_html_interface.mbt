// Do not edit. This file is generated.
// MoonBit type: TrustedHTML
// Specifications: trusted-types.idl

///|
#external
pub type TrustedHTML

///|
pub impl TJsValue for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub fn[T : TTrustedHTML] TrustedHTML::into(self : TrustedHTML) -> T = "%identity"

///|
pub impl TTrustedHTML for TrustedHTML

///|
pub trait TTrustedHTML: TJsValue {
  to_json(self : Self) -> String = _
}

///|
extern "js" fn trusted_html_to_json_ffi(obj : JsValue) -> String = "(obj) => obj.toJSON(obj)"

///|
impl TTrustedHTML with to_json(self : Self) -> String {
  trusted_html_to_json_ffi(TJsValue::to_js(self))
}
