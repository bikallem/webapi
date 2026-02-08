extern "js" fn file_new_ffi(file_bits: JsValue, file_name: JsValue, options: JsValue) -> File = "(file_bits, file_name, options) => new File(file_bits, file_name, options)"

extern "js" fn file_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn file_last_modified_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lastModified"