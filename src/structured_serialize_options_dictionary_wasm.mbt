///|
fn structured_serialize_options_ffi(
  transfer : JsValue,
) -> StructuredSerializeOptions = "webapi_StructuredSerializeOptions" "new"

///|
fn structured_serialize_options_empty_ffi() -> StructuredSerializeOptions = "webapi_Dictionary" "empty"
