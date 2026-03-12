fn resize_observer_callback_ffi_raw(callback : (JsArray, ResizeObserver) -> Unit) -> ResizeObserverCallback = "webapi_ResizeObserverCallback" "new"

///|
fn resize_observer_callback_ffi(callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit) -> ResizeObserverCallback {
  resize_observer_callback_ffi_raw(
    fn(entries : JsArray, observer : ResizeObserver) -> Unit {
      callback(entries.to_array(), observer)
    },
  )
}