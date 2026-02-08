// Do not edit. This file is generated.
// MoonBit type: CSSImportRule
// Specifications: cssom.idl

///|
/// [CSSImportRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule)
#external
pub type CSSImportRule

///|
pub impl TJsValue for CSSImportRule with to_js(self : CSSImportRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSImportRule] CSSImportRule::into(self : CSSImportRule) -> T = "%identity"

///|
pub impl TCSSImportRule for CSSImportRule

///|
pub impl TCSSRule for CSSImportRule

///|
/// [CSSImportRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule) interface.
pub trait TCSSImportRule: TCSSRule {
  href(self : Self) -> String = _
  media(self : Self) -> MediaList = _
  style_sheet(self : Self) -> CSSStyleSheet = _
  layer_name(self : Self) -> CSSOMString = _
  supports_text(self : Self) -> CSSOMString = _
}

///|
/// [CSSImportRule.href](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/href)
impl TCSSImportRule with href(self : Self) -> String {
  css_import_rule_href_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [CSSImportRule.media](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/media)
impl TCSSImportRule with media(self : Self) -> MediaList {
  css_import_rule_media_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [CSSImportRule.styleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/styleSheet)
impl TCSSImportRule with style_sheet(self : Self) -> CSSStyleSheet {
  css_import_rule_style_sheet_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [CSSImportRule.layerName](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/layerName)
impl TCSSImportRule with layer_name(self : Self) -> CSSOMString {
  css_import_rule_layer_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [CSSImportRule.supportsText](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/supportsText)
impl TCSSImportRule with supports_text(self : Self) -> CSSOMString {
  css_import_rule_supports_text_ffi(TJsValue::to_js(self)).unsafe_cast()
}
