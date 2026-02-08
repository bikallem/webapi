extern "js" fn html_menu_element_new_ffi() -> HTMLMenuElement = "() => new HTMLMenuElement()"

extern "js" fn html_menu_element_compact_ffi(obj: JsValue) -> JsValue = "(obj) => obj.compact"

extern "js" fn html_menu_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"