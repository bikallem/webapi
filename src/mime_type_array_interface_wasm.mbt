fn mime_type_array_length_ffi(obj: JsValue) -> UInt = "webapi_MimeTypeArray" "get_length"

fn mime_type_array_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_MimeTypeArray" "item"

fn mime_type_array_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_MimeTypeArray" "namedItem"