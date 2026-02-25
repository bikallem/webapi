///|
extern "js" fn transformer_transform_callback_ffi(
  callback : (JsValue, TransformStreamDefaultController) -> JsPromise[JsValue],
) -> TransformerTransformCallback = "(callback) => callback"
