///|
fn intersection_observer_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> Unit,
) -> IntersectionObserverCallback = "webapi_IntersectionObserverCallback" "new"

///|
fn intersection_observer_callback_ffi(
  callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback {
  intersection_observer_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_array(a0, JsValue::unsafe_cast), a1.unsafe_cast())
  })
}
