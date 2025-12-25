// Do not edit. This file is generated.
// MoonBit type: MimeType
// Specifications: html.idl

///|
#external
pub type MimeType

///|
pub impl TJsValue for MimeType with to_js(self : MimeType) -> JsValue = "%identity"

///|
pub fn[T : TMimeType] MimeType::into(self : MimeType) -> T = "%identity"

///|
pub impl TMimeType for MimeType

///|
pub trait TMimeType: TJsValue {
  type_(self : Self) -> String = _
  description(self : Self) -> String = _
  suffixes(self : Self) -> String = _
  enabled_plugin(self : Self) -> Plugin = _
}

///|
extern "js" fn mime_type_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TMimeType with type_(self : Self) -> String {
  mime_type_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mime_type_description_ffi(obj : JsValue) -> String = "(obj) => obj.description"

///|
impl TMimeType with description(self : Self) -> String {
  mime_type_description_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mime_type_suffixes_ffi(obj : JsValue) -> String = "(obj) => obj.suffixes"

///|
impl TMimeType with suffixes(self : Self) -> String {
  mime_type_suffixes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mime_type_enabled_plugin_ffi(obj : JsValue) -> Plugin = "(obj) => obj.enabledPlugin"

///|
impl TMimeType with enabled_plugin(self : Self) -> Plugin {
  mime_type_enabled_plugin_ffi(TJsValue::to_js(self))
}
