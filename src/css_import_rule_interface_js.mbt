///|
extern "js" fn css_import_rule_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn css_import_rule_href_ffi(obj : JsValue) -> String {
  css_import_rule_href_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_import_rule_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
fn css_import_rule_media_ffi(obj : JsValue) -> MediaList {
  css_import_rule_media_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_import_rule_style_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheet"

///|
fn css_import_rule_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  css_import_rule_style_sheet_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_import_rule_layer_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerName"

///|
fn css_import_rule_layer_name_ffi(obj : JsValue) -> CSSOMString {
  css_import_rule_layer_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_import_rule_supports_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.supportsText"

///|
fn css_import_rule_supports_text_ffi(obj : JsValue) -> CSSOMString {
  css_import_rule_supports_text_ffi_js(obj).unsafe_cast()
}
