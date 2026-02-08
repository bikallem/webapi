// Do not edit. This file is generated.
// MoonBit type: MutationObserver
// Specifications: dom.idl

/// [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver)
#external
pub type MutationObserver

pub impl TJsValue for MutationObserver with to_js(self: MutationObserver) -> JsValue = "%identity"

pub fn[T: TMutationObserver] MutationObserver::into(self : MutationObserver) -> T = "%identity"

pub impl TMutationObserver for MutationObserver

pub fn MutationObserver::new(callback : MutationCallback) -> MutationObserver {
  mutation_observer_new_ffi(TJsValue::to_js(callback))
}

/// [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver) interface.
pub trait TMutationObserver: TJsValue {
  observe(self : Self, target : &TNode, options? : MutationObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> Array[MutationRecord] = _
}

/// [MutationObserver.observe](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/observe)
impl TMutationObserver with observe(self : Self, 
target : &TNode, 
options? : MutationObserverInit = MutationObserverInit::empty()) -> Unit {
  mutation_observer_observe_ffi(TJsValue::to_js(self), TJsValue::to_js(target), TJsValue::to_js(options))
}

/// [MutationObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/disconnect)
impl TMutationObserver with disconnect(self : Self) -> Unit {
  mutation_observer_disconnect_ffi(TJsValue::to_js(self))
}

/// [MutationObserver.takeRecords](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/takeRecords)
impl TMutationObserver with take_records(self : Self) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi(TJsValue::to_js(self)).unsafe_cast()
}