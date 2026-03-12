///|
extern "js" fn writable_stream_default_controller_signal_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.signal"

///|
fn writable_stream_default_controller_signal_ffi(obj : JsValue) -> AbortSignal {
  writable_stream_default_controller_signal_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.error(e)"
