///|
fn static_range_init_ffi(
  start_container : JsValue,
  start_offset : JsValue,
  end_container : JsValue,
  end_offset : JsValue,
) -> StaticRangeInit = "webapi_StaticRangeInit" "new"

///|
fn static_range_init_empty_ffi() -> StaticRangeInit = "webapi_Dictionary" "empty"
