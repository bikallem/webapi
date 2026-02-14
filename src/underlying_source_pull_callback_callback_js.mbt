///|
extern "js" fn underlying_source_pull_callback_ffi(
  callback : (ReadableStreamController) -> JsPromise[JsValue],
) -> UnderlyingSourcePullCallback = "(callback) => callback"
