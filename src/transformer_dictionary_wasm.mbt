///|
fn transformer_ffi(
  start : JsValue,
  transform : JsValue,
  flush : JsValue,
  cancel : JsValue,
  readable_type : JsValue,
  writable_type : JsValue,
) -> Transformer = "webapi_Transformer" "new"

///|
fn transformer_empty_ffi() -> Transformer = "webapi_Dictionary" "empty"
