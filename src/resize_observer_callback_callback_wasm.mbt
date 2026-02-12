///|
fn resize_observer_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> Unit,
) -> ResizeObserverCallback = "webapi_ResizeObserverCallback" "new"

///|
fn resize_observer_callback_ffi(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback {
  resize_observer_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_array(a0, JsValue::unsafe_cast), a1.unsafe_cast())
  })
}
