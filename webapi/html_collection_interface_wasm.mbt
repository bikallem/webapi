fn html_collection_length_ffi(obj: JsValue) -> UInt = "webapi_HTMLCollection" "get_length"

fn html_collection_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_HTMLCollection" "item"

fn html_collection_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_HTMLCollection" "namedItem"