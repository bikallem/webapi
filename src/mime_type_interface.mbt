// Do not edit. This file is generated.
// MoonBit type: MimeType
// Specifications: html.idl

///|
/// [MimeType](https://developer.mozilla.org/en-US/docs/Web/API/MimeType)
#external
pub type MimeType

///|
pub impl TJsValue for MimeType with to_js(self : MimeType) -> JsValue = "%identity"

///|
pub fn[T : TMimeType] MimeType::into(self : MimeType) -> T = "%identity"

///|
pub impl TMimeType for MimeType

///|
/// [MimeType](https://developer.mozilla.org/en-US/docs/Web/API/MimeType) interface.
pub trait TMimeType: TJsValue {
  type_(self : Self) -> String = _
  description(self : Self) -> String = _
  suffixes(self : Self) -> String = _
  enabled_plugin(self : Self) -> Plugin = _
}

///|
/// [MimeType.type](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/type)
impl TMimeType with type_(self : Self) -> String {
  mime_type_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MimeType.description](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/description)
impl TMimeType with description(self : Self) -> String {
  mime_type_description_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MimeType.suffixes](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/suffixes)
impl TMimeType with suffixes(self : Self) -> String {
  mime_type_suffixes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [MimeType.enabledPlugin](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/enabledPlugin)
impl TMimeType with enabled_plugin(self : Self) -> Plugin {
  mime_type_enabled_plugin_ffi(TJsValue::to_js(self)).unsafe_cast()
}
