fn transformer_ffi(start: JsValue, transform: JsValue, flush: JsValue, cancel: JsValue, readable_type: JsValue, writable_type: JsValue) -> Transformer = "webapi_Transformer" "new"

fn transformer_empty_ffi() -> Transformer = "webapi_Dictionary" "empty"

fn transformer_get_start_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_start"

fn transformer_get_transform_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_transform"

fn transformer_get_flush_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_flush"

fn transformer_get_cancel_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_cancel"

fn transformer_get_readable_type_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_readableType"

fn transformer_get_writable_type_ffi(obj: JsValue) -> JsValue = "webapi_Transformer" "get_writableType"