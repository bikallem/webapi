// Do not edit. This file is generated.
// MoonBit type: ResizeObserver
// Specifications: resize-observer.idl

/// [ResizeObserver](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver)
#external
pub type ResizeObserver

pub impl TJsValue for ResizeObserver with to_js(self: ResizeObserver) -> JsValue = "%identity"

pub fn[T: TResizeObserver] ResizeObserver::into(self : ResizeObserver) -> T = "%identity"

pub impl TResizeObserver for ResizeObserver

pub fn ResizeObserver::new(callback : ResizeObserverCallback) -> ResizeObserver {
  resize_observer_new_ffi(TJsValue::to_js(callback))
}

/// [ResizeObserver](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver) interface.
pub trait TResizeObserver: TJsValue {
  observe(self : Self, target : &TElement, options? : ResizeObserverOptions) -> Unit = _
  unobserve(self : Self, target : &TElement) -> Unit = _
  disconnect(self : Self) -> Unit = _
}

/// [ResizeObserver.observe](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver/observe)
impl TResizeObserver with observe(self : Self, 
target : &TElement, 
options? : ResizeObserverOptions = ResizeObserverOptions::empty()) -> Unit {
  resize_observer_observe_ffi(TJsValue::to_js(self), TJsValue::to_js(target), TJsValue::to_js(options))
}

/// [ResizeObserver.unobserve](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver/unobserve)
impl TResizeObserver with unobserve(self : Self, 
target : &TElement) -> Unit {
  resize_observer_unobserve_ffi(TJsValue::to_js(self), TJsValue::to_js(target))
}

/// [ResizeObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver/disconnect)
impl TResizeObserver with disconnect(self : Self) -> Unit {
  resize_observer_disconnect_ffi(TJsValue::to_js(self))
}