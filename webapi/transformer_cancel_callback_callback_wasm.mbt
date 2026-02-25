///|
fn transformer_cancel_callback_ffi(
  callback : (JsValue) -> JsPromise[JsValue],
) -> TransformerCancelCallback = "webapi_TransformerCancelCallback" "new"
