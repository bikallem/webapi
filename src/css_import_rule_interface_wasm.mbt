fn css_import_rule_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSImportRule" "get_href"

///|
fn css_import_rule_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(css_import_rule_href_ffi_wasm(obj))
}

fn css_import_rule_media_ffi(obj: JsValue) -> MediaList = "webapi_CSSImportRule" "get_media"

fn css_import_rule_style_sheet_ffi(obj: JsValue) -> CSSStyleSheet = "webapi_CSSImportRule" "get_styleSheet"

fn css_import_rule_layer_name_ffi(obj: JsValue) -> CSSOMString = "webapi_CSSImportRule" "get_layerName"

fn css_import_rule_supports_text_ffi(obj: JsValue) -> CSSOMString = "webapi_CSSImportRule" "get_supportsText"