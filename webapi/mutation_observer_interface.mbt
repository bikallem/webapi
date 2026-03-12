// Do not edit. This file is generated.
// MoonBit type: MutationObserver
// Specifications: dom.idl

///|
/// [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver)
#external
pub type MutationObserver

///|
pub impl TJsValue for MutationObserver with to_js(self : MutationObserver) -> JsValue = "%identity"

///|
pub impl FromJsAny for MutationObserver with from_js_any(value : JsAny) -> MutationObserver = "%identity"

///|
pub fn[T : TMutationObserver] MutationObserver::into(
  self : MutationObserver,
) -> T = "%identity"

///|
pub impl TMutationObserver for MutationObserver

///|
pub fn MutationObserver::new(
  callback : (Array[MutationRecord], MutationObserver) -> Unit,
) -> MutationObserver {
  mutation_observer_new_ffi(TJsValue::to_js(mutation_callback_ffi(callback)))
}

///|
/// [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver) interface.
pub trait TMutationObserver: TJsValue {
  observe(self : Self, target : &TNode, options? : MutationObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> Array[MutationRecord] = _
}

///|
/// [MutationObserver.observe](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/observe)
impl TMutationObserver with observe(
  self : Self,
  target : &TNode,
  options? : MutationObserverInit,
) -> Unit {
  mutation_observer_observe_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
    opt_to_js(options),
  )
}

///|
/// [MutationObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/disconnect)
impl TMutationObserver with disconnect(self : Self) -> Unit {
  mutation_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
/// [MutationObserver.takeRecords](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver/takeRecords)
impl TMutationObserver with take_records(self : Self) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn mutation_observer_new_ffi(
  callback : JsValue,
) -> MutationObserver = "(callback) => new MutationObserver(callback)"

///|
#cfg(target="js")
extern "js" fn mutation_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
  options : JsValue,
) -> Unit = "(obj, target, options) => obj.observe(target, options)"

///|
#cfg(target="js")
extern "js" fn mutation_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect()"

///|
#cfg(target="js")
extern "js" fn mutation_observer_take_records_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.takeRecords()"

///|
#cfg(target="js")
fn mutation_observer_take_records_ffi(obj : JsValue) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn mutation_observer_new_ffi(callback : JsValue) -> MutationObserver = "webapi_MutationObserver" "new"

///|
#cfg(target="wasm-gc")
fn mutation_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
  options : JsValue,
) -> Unit = "webapi_MutationObserver" "observe"

///|
#cfg(target="wasm-gc")
fn mutation_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_MutationObserver" "disconnect"

///|
#cfg(target="wasm-gc")
fn mutation_observer_take_records_ffi_wasm(obj : JsValue) -> JsArray = "webapi_MutationObserver" "takeRecords"

///|
#cfg(target="wasm-gc")
fn mutation_observer_take_records_ffi(obj : JsValue) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi_wasm(obj).to_array()
}
