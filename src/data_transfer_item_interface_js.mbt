extern "js" fn data_transfer_item_kind_ffi(obj: JsValue) -> JsValue = "(obj) => obj.kind"

extern "js" fn data_transfer_item_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn data_transfer_item_get_as_string_ffi(obj: JsValue, _callback: JsValue) -> Unit = "(obj, _callback) => obj.getAsString(_callback)"

extern "js" fn data_transfer_item_get_as_file_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getAsFile()"