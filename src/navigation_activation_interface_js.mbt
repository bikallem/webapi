extern "js" fn navigation_activation_from_ffi(obj: JsValue) -> JsValue = "(obj) => obj.from"

extern "js" fn navigation_activation_entry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.entry"

extern "js" fn navigation_activation_navigation_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"