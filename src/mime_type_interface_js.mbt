extern "js" fn mime_type_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn mime_type_description_ffi(obj: JsValue) -> JsValue = "(obj) => obj.description"

extern "js" fn mime_type_suffixes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.suffixes"

extern "js" fn mime_type_enabled_plugin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.enabledPlugin"