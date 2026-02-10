fn style_sheet_type_ffi(obj: JsValue) -> CSSOMString = "webapi_StyleSheet" "get_type"

fn style_sheet_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StyleSheet" "get_href"

///|
fn style_sheet_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(style_sheet_href_ffi_wasm(obj))
}

fn style_sheet_owner_node_ffi(obj: JsValue) -> StyleSheetOwnerNode = "webapi_StyleSheet" "get_ownerNode"

fn style_sheet_parent_style_sheet_ffi(obj: JsValue) -> CSSStyleSheet = "webapi_StyleSheet" "get_parentStyleSheet"

fn style_sheet_title_ffi_wasm(obj: JsValue) -> JsValue = "webapi_StyleSheet" "get_title"

///|
fn style_sheet_title_ffi(obj: JsValue) -> String {
  jsvalue_to_string(style_sheet_title_ffi_wasm(obj))
}

fn style_sheet_media_ffi(obj: JsValue) -> MediaList = "webapi_StyleSheet" "get_media"

fn style_sheet_disabled_ffi(obj: JsValue) -> Bool = "webapi_StyleSheet" "get_disabled"

fn style_sheet_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_StyleSheet" "set_disabled"