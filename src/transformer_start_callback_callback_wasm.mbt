///|
fn transformer_start_callback_ffi(
  callback : (TransformStreamDefaultController) -> JsValue,
) -> TransformerStartCallback = "webapi_TransformerStartCallback" "new"
