fn count_queuing_strategy_new_ffi(init: JsValue) -> CountQueuingStrategy = "webapi_CountQueuingStrategy" "new"

fn count_queuing_strategy_high_water_mark_ffi(obj: JsValue) -> Double = "webapi_CountQueuingStrategy" "get_highWaterMark"

fn count_queuing_strategy_size_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CountQueuingStrategy" "get_size"

///|
fn count_queuing_strategy_size_ffi(obj: JsValue) -> Function {
  count_queuing_strategy_size_ffi_wasm(obj).unsafe_cast()
}