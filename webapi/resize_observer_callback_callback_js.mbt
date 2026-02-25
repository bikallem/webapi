///|
extern "js" fn resize_observer_callback_ffi(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback = "(callback) => callback"
