// Auto-generated MoonBit bindings for MutationObserver

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface MutationObserver {
//   constructor(MutationCallback callback);
// 
//   undefined observe(Node target, optional MutationObserverInit options = {});
//   undefined disconnect();
//   sequence<MutationRecord> takeRecords();
// };

///|
#external
pub type MutationObserver

///|
pub trait TMutationObserver: TJsValue {
  observe(self : Self, target : Node, options? : MutationObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> Array[MutationRecord] = _
}

///|
pub impl TMutationObserver for MutationObserver

///|
pub impl TJsValue for MutationObserver with to_js(self : MutationObserver) -> JsValue = "%identity"

///|
pub fn MutationObserver::new(callback : JsValue) -> MutationObserver = "webapi_MutationObserver" "new"

///|
fn mutation_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
  options : JsValue,
) -> Unit = "webapi_MutationObserver" "observe"

///|
impl TMutationObserver with observe(
  self : Self,
  target : Node,
  options? : MutationObserverInit = MutationObserverInit::empty(),
) -> Unit {
  mutation_observer_observe_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    TJsValue::to_js(options),
  )
}

///|
fn mutation_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_MutationObserver" "disconnect"

///|
impl TMutationObserver with disconnect(self : Self) -> Unit {
  mutation_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
fn mutation_observer_take_records_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserver" "takeRecords"

///|
impl TMutationObserver with take_records(self : Self) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi(TJsValue::to_js(self)).unsafe_cast()
}
