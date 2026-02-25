///|
extern "js" fn transformer_flush_callback_ffi(
  callback : (TransformStreamDefaultController) -> JsPromise[JsValue],
) -> TransformerFlushCallback = "(callback) => callback"
