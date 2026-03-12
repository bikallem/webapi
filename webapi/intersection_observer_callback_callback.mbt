// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverCallback
// Specifications: intersection-observer.idl

///|
/// [IntersectionObserverCallback](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverCallback)
#external
pub type IntersectionObserverCallback

///|
pub impl TJsValue for IntersectionObserverCallback with to_js(
  self : IntersectionObserverCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverCallback with from_js_any(
  value : JsAny,
) -> IntersectionObserverCallback = "%identity"

///|
pub fn IntersectionObserverCallback::new(
  callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback {
  intersection_observer_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_callback_ffi(
  callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn intersection_observer_callback_ffi_raw(
  callback : (JsArray, IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback = "webapi_IntersectionObserverCallback" "new"

///|
#cfg(target="wasm-gc")
fn intersection_observer_callback_ffi(
  callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
) -> IntersectionObserverCallback {
  intersection_observer_callback_ffi_raw(fn(
    entries : JsArray,
    observer : IntersectionObserver,
  ) -> Unit {
    callback(entries.to_array(), observer)
  })
}
