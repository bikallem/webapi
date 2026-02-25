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

///|
fn underlying_source_get_start_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSource" "get_start"

///|
fn underlying_source_get_pull_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSource" "get_pull"

///|
fn underlying_source_get_cancel_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSource" "get_cancel"

///|
fn underlying_source_get_type_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSource" "get_type"

///|
fn underlying_source_get_auto_allocate_chunk_size_ffi(obj : JsValue) -> JsValue = "webapi_UnderlyingSource" "get_autoAllocateChunkSize"
