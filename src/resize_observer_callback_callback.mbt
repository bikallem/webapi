// Do not edit. This file is generated.
// MoonBit type: ResizeObserverCallback
// Specifications: resize-observer.idl

///|
/// [ResizeObserverCallback](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverCallback)
#external
pub type ResizeObserverCallback

///|
pub impl TJsValue for ResizeObserverCallback with to_js(
  self : ResizeObserverCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ResizeObserverCallback with from_js_any(value : JsAny) -> ResizeObserverCallback = "%identity"

///|
pub fn ResizeObserverCallback::new(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback {
  resize_observer_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn resize_observer_callback_ffi(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn resize_observer_callback_ffi_raw(
  callback : (JsArray, ResizeObserver) -> Unit,
) -> ResizeObserverCallback = "webapi_ResizeObserverCallback" "new"

///|
#cfg(target="wasm-gc")
fn resize_observer_callback_ffi(
  callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback {
  resize_observer_callback_ffi_raw(fn(
    entries : JsArray,
    observer : ResizeObserver,
  ) -> Unit {
    callback(entries.to_array(), observer)
  })
}
