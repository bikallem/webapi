///|
fn underlying_sink_ffi(
  start : JsValue,
  write : JsValue,
  close : JsValue,
  abort : JsValue,
  type_ : JsValue,
) -> UnderlyingSink = "webapi_UnderlyingSink" "new"

///|
fn underlying_sink_empty_ffi() -> UnderlyingSink = "webapi_Dictionary" "empty"
