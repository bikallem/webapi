///|
extern "js" fn count_queuing_strategy_new_ffi(
  init : JsValue,
) -> CountQueuingStrategy = "(init) => new CountQueuingStrategy(init)"

///|
extern "js" fn count_queuing_strategy_high_water_mark_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.highWaterMark"

///|
fn count_queuing_strategy_high_water_mark_ffi(obj : JsValue) -> Double {
  count_queuing_strategy_high_water_mark_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn count_queuing_strategy_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
fn count_queuing_strategy_size_ffi(obj : JsValue) -> Function {
  count_queuing_strategy_size_ffi_js(obj).unsafe_cast()
}
