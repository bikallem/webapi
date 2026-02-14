///|
fn structured_serialize_options_ffi(
  transfer : JsValue,
) -> StructuredSerializeOptions = "webapi_StructuredSerializeOptions" "new"

///|
fn structured_serialize_options_empty_ffi() -> StructuredSerializeOptions = "webapi_Dictionary" "empty"

///|
fn structured_serialize_options_get_transfer_ffi(obj : JsValue) -> JsValue = "webapi_StructuredSerializeOptions" "get_transfer"
