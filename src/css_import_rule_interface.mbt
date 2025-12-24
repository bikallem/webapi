///|
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
pub trait TCSSImportRule: TCSSRule {
  href(self : Self) -> String = _
  media(self : Self) -> MediaList = _
  style_sheet(self : Self) -> CSSStyleSheet = _
  layer_name(self : Self) -> CSSOMString = _
  supports_text(self : Self) -> CSSOMString = _
}

///|
extern "js" fn css_import_rule_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
impl TCSSImportRule with href(self : Self) -> String {
  css_import_rule_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_import_rule_media_ffi(obj : JsValue) -> MediaList = "(obj) => obj.media"

///|
impl TCSSImportRule with media(self : Self) -> MediaList {
  css_import_rule_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_import_rule_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.styleSheet"

///|
impl TCSSImportRule with style_sheet(self : Self) -> CSSStyleSheet {
  css_import_rule_style_sheet_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_import_rule_layer_name_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.layerName"

///|
impl TCSSImportRule with layer_name(self : Self) -> CSSOMString {
  css_import_rule_layer_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_import_rule_supports_text_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.supportsText"

///|
impl TCSSImportRule with supports_text(self : Self) -> CSSOMString {
  css_import_rule_supports_text_ffi(TJsValue::to_js(self))
}
