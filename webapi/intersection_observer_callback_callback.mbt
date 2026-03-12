// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverCallback
// Specifications: intersection-observer.idl

/// [IntersectionObserverCallback](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverCallback)
#external
pub type IntersectionObserverCallback

pub impl TJsValue for IntersectionObserverCallback with to_js(self: IntersectionObserverCallback) -> JsValue = "%identity"

pub impl FromJsAny for IntersectionObserverCallback with from_js_any(value : JsAny) -> IntersectionObserverCallback = "%identity"

pub fn IntersectionObserverCallback::new(callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit) -> IntersectionObserverCallback { intersection_observer_callback_ffi(callback) }