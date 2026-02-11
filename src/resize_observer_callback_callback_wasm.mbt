///|
fn resize_observer_callback_ffi(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback = "webapi_ResizeObserverCallback" "new"
