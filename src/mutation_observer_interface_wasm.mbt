fn mutation_observer_new_ffi(callback: JsValue) -> MutationObserver = "webapi_MutationObserver" "new"

fn mutation_observer_observe_ffi(obj: JsValue, target: JsValue, options: JsValue) -> Unit = "webapi_MutationObserver" "observe"

fn mutation_observer_disconnect_ffi(obj: JsValue) -> Unit = "webapi_MutationObserver" "disconnect"

fn mutation_observer_take_records_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MutationObserver" "takeRecords"

///|
fn mutation_observer_take_records_ffi(obj: JsValue) -> Array[MutationRecord] {
  mutation_observer_take_records_ffi_wasm(obj).unsafe_cast()
}