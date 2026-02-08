extern "js" fn style_sheet_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn style_sheet_href_ffi(obj: JsValue) -> JsValue = "(obj) => obj.href"

extern "js" fn style_sheet_owner_node_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ownerNode"

extern "js" fn style_sheet_parent_style_sheet_ffi(obj: JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

extern "js" fn style_sheet_title_ffi(obj: JsValue) -> JsValue = "(obj) => obj.title"

extern "js" fn style_sheet_media_ffi(obj: JsValue) -> JsValue = "(obj) => obj.media"

extern "js" fn style_sheet_disabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

extern "js" fn style_sheet_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"