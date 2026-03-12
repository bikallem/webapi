extern "js" fn mutation_observer_new_ffi(callback: JsValue) -> MutationObserver = "(callback) => new MutationObserver(callback)"

extern "js" fn mutation_observer_observe_ffi(obj: JsValue, target: JsValue, options: JsValue) -> Unit = "(obj, target, options) => obj.observe(target, options)"

extern "js" fn mutation_observer_disconnect_ffi(obj: JsValue) -> Unit = "(obj) => obj.disconnect()"

extern "js" fn mutation_observer_take_records_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.takeRecords()"

///|
fn mutation_observer_take_records_ffi(obj: JsValue) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi_js(obj).unsafe_cast()
}