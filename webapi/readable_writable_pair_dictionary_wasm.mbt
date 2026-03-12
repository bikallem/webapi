fn readable_writable_pair_ffi(readable: JsValue, writable: JsValue) -> ReadableWritablePair = "webapi_ReadableWritablePair" "new"

fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "webapi_Dictionary" "empty"

fn readable_writable_pair_get_readable_ffi(obj: JsValue) -> ReadableStream = "webapi_ReadableWritablePair" "get_readable"

fn readable_writable_pair_get_writable_ffi(obj: JsValue) -> WritableStream = "webapi_ReadableWritablePair" "get_writable"