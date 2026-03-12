fn css_style_sheet_init_ffi(base_url: JsValue, media: JsValue, disabled: JsValue) -> CSSStyleSheetInit = "webapi_CSSStyleSheetInit" "new"

fn css_style_sheet_init_empty_ffi() -> CSSStyleSheetInit = "webapi_Dictionary" "empty"

fn css_style_sheet_init_get_base_url_ffi(obj: JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_baseURL"

fn css_style_sheet_init_get_media_ffi(obj: JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_media"

fn css_style_sheet_init_get_disabled_ffi(obj: JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_disabled"