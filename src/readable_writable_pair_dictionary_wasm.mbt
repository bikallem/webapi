///|
fn readable_writable_pair_ffi(
  readable : JsValue,
  writable : JsValue,
) -> ReadableWritablePair = "webapi_ReadableWritablePair" "new"

///|
fn readable_writable_pair_empty_ffi() -> ReadableWritablePair = "webapi_Dictionary" "empty"
