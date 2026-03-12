extern "js" fn style_sheet_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn style_sheet_type_ffi(obj: JsValue) -> CSSOMString {
  style_sheet_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn style_sheet_href_ffi(obj: JsValue) -> String {
  style_sheet_href_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_owner_node_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ownerNode"

///|
fn style_sheet_owner_node_ffi(obj: JsValue) -> StyleSheetOwnerNode {
  style_sheet_owner_node_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_parent_style_sheet_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

///|
fn style_sheet_parent_style_sheet_ffi(obj: JsValue) -> CSSStyleSheet {
  style_sheet_parent_style_sheet_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_title_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.title"

///|
fn style_sheet_title_ffi(obj: JsValue) -> String {
  style_sheet_title_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_media_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.media"

///|
fn style_sheet_media_ffi(obj: JsValue) -> MediaList {
  style_sheet_media_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn style_sheet_disabled_ffi(obj: JsValue) -> Bool {
  style_sheet_disabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn style_sheet_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"