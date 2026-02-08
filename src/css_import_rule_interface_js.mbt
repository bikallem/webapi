extern "js" fn css_import_rule_href_ffi(obj: JsValue) -> JsValue = "(obj) => obj.href"

extern "js" fn css_import_rule_media_ffi(obj: JsValue) -> JsValue = "(obj) => obj.media"

extern "js" fn css_import_rule_style_sheet_ffi(obj: JsValue) -> JsValue = "(obj) => obj.styleSheet"

extern "js" fn css_import_rule_layer_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.layerName"

extern "js" fn css_import_rule_supports_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.supportsText"