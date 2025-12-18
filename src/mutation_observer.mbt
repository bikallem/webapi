// Auto-generated MoonBit bindings for MutationObserver interface
// Do not edit manually

#external
pub type MutationObserver

pub impl TJsValue for MutationObserver with to_js(self: MutationObserver) -> JsValue = "%identity"


pub fn[T: TMutationObserver] MutationObserver::into(self : MutationObserver) -> T = "%identity"
pub impl TMutationObserver for MutationObserver

pub fn MutationObserver::new(callback : MutationCallback) -> MutationObserver = "webapi_MutationObserver" "new"

pub trait TMutationObserver: TJSValue {
  observe(self: Self, target : &TNode, options? : MutationObserverInit) -> Unit = _
  disconnect(self: Self) -> Unit = _
  take_records(self: Self) -> Array[&TMutationRecord] = _
}

///|
fn mutation_observer_observe_ffi(obj : JsValue, target : JsValue, options : JsValue) -> Unit = "webapi_MutationObserver" "observe"

///|
impl TMutationObserver with observe(self : Self, target : &TNode, options? : MutationObserverInit) -> Unit {
  mutation_observer_observe_ffi(self.to_js(), target.to_js(), TJsValue::to_js(options))
}

///|
fn mutation_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_MutationObserver" "disconnect"

///|
impl TMutationObserver with disconnect(self : Self) -> Unit {
  mutation_observer_disconnect_ffi(self.to_js())
}

///|
fn mutation_observer_take_records_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserver" "takeRecords"

///|
impl TMutationObserver with take_records(self : Self) -> Array[&TMutationRecord] {
  mutation_observer_take_records_ffi(self.to_js()).unsafe_cast()
}