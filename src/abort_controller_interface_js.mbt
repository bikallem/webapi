///|
extern "js" fn abort_controller_new_ffi() -> AbortController = "() => new AbortController()"

///|
extern "js" fn abort_controller_signal_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
fn abort_controller_signal_ffi(obj : JsValue) -> AbortSignal {
  abort_controller_signal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn abort_controller_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> Unit = "(obj, reason) => obj.abort(reason)"
