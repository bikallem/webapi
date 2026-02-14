///|
fn underlying_source_ffi(
  start : JsValue,
  pull : JsValue,
  cancel : JsValue,
  type_ : JsValue,
  auto_allocate_chunk_size : JsValue,
) -> UnderlyingSource = "webapi_UnderlyingSource" "new"

///|
fn underlying_source_empty_ffi() -> UnderlyingSource = "webapi_Dictionary" "empty"
