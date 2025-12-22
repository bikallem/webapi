///|
#external
pub type MutationObserver

///|
pub impl TJsValue for MutationObserver with to_js(self : MutationObserver) -> JsValue = "%identity"

///|
pub fn[T : TMutationObserver] MutationObserver::into(
  self : MutationObserver,
) -> T = "%identity"

///|
pub impl TMutationObserver for MutationObserver

///|
extern "js" fn mutation_observer_new_ffi(
  callback : JsValue,
) -> MutationObserver = "(callback) => new MutationObserver(callback)"

///|
pub fn MutationObserver::new(callback : MutationCallback) -> MutationObserver {
  mutation_observer_new_ffi(TJsValue::to_js(callback))
}

///|
pub trait TMutationObserver: TJsValue {
  observe(self : Self, target : &TNode, options? : MutationObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> Array[MutationRecord] = _
}

///|
extern "js" fn mutation_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
  options : JsValue,
) -> Unit = "(obj, target, options) => obj.observe(obj, target, options)"

///|
impl TMutationObserver with observe(
  self : Self,
  target : &TNode,
  options? : MutationObserverInit = MutationObserverInit::empty(),
) -> Unit {
  mutation_observer_observe_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn mutation_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect(obj)"

///|
impl TMutationObserver with disconnect(self : Self) -> Unit {
  mutation_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_observer_take_records_ffi(
  obj : JsValue,
) -> Array[MutationRecord] = "(obj) => obj.takeRecords(obj)"

///|
impl TMutationObserver with take_records(self : Self) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi(TJsValue::to_js(self))
}
