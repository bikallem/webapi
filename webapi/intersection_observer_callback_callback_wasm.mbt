fn intersection_observer_callback_ffi_raw(callback : (JsArray, IntersectionObserver) -> Unit) -> IntersectionObserverCallback = "webapi_IntersectionObserverCallback" "new"

///|
fn intersection_observer_callback_ffi(callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit) -> IntersectionObserverCallback {
  intersection_observer_callback_ffi_raw(
    fn(entries : JsArray, observer : IntersectionObserver) -> Unit {
      callback(entries.to_array(), observer)
    },
  )
}