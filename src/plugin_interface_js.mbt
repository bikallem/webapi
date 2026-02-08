extern "js" fn plugin_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn plugin_description_ffi(obj: JsValue) -> JsValue = "(obj) => obj.description"

extern "js" fn plugin_filename_ffi(obj: JsValue) -> JsValue = "(obj) => obj.filename"

extern "js" fn plugin_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"