// Do not edit. This file is generated.
// MoonBit type: ResizeObserver
// Specifications: resize-observer.idl

/// [ResizeObserver](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver)
#external
pub type ResizeObserver

pub impl TJsValue for ResizeObserver with to_js(self: ResizeObserver) -> JsValue = "%identity"

pub impl FromJsAny for ResizeObserver with from_js_any(value : JsAny) -> ResizeObserver = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TResizeObserver] ResizeObserver::into(self : ResizeObserver) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TResizeObserver] ResizeObserver::unsafe_into(self : ResizeObserver) -> T = "%identity"

pub impl HasConstructor for ResizeObserver with constructor_name() { "ResizeObserver" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TResizeObserver + HasConstructor] ResizeObserver::try_into(self : ResizeObserver) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TResizeObserver for ResizeObserver

pub fn ResizeObserver::new(callback : (Array[ResizeObserverEntry], ResizeObserver) -> Unit) -> ResizeObserver {
  resize_observer_new_ffi(TJsValue::to_js(resize_observer_callback_ffi(callback)))
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
options? : ResizeObserverOptions) -> Unit {
  resize_observer_observe_ffi(TJsValue::to_js(self), TJsValue::to_js(target), opt_to_js(options))
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

#cfg(target="js")
extern "js" fn resize_observer_new_ffi(callback: JsValue) -> ResizeObserver = "(callback) => new ResizeObserver(callback)"

#cfg(target="js")
extern "js" fn resize_observer_observe_ffi(obj: JsValue, target: JsValue, options: JsValue) -> Unit = "(obj, target, options) => obj.observe(target, options)"

#cfg(target="js")
extern "js" fn resize_observer_unobserve_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => obj.unobserve(target)"

#cfg(target="js")
extern "js" fn resize_observer_disconnect_ffi(obj: JsValue) -> Unit = "(obj) => obj.disconnect()"

#cfg(target="wasm-gc")
fn resize_observer_new_ffi(callback: JsValue) -> ResizeObserver = "webapi_ResizeObserver" "new"

#cfg(target="wasm-gc")
fn resize_observer_observe_ffi(obj: JsValue, target: JsValue, options: JsValue) -> Unit = "webapi_ResizeObserver" "observe"

#cfg(target="wasm-gc")
fn resize_observer_unobserve_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_ResizeObserver" "unobserve"

#cfg(target="wasm-gc")
fn resize_observer_disconnect_ffi(obj: JsValue) -> Unit = "webapi_ResizeObserver" "disconnect"