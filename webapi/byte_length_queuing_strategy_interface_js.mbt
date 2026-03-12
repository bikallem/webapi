extern "js" fn byte_length_queuing_strategy_new_ffi(init: JsValue) -> ByteLengthQueuingStrategy = "(init) => new ByteLengthQueuingStrategy(init)"

extern "js" fn byte_length_queuing_strategy_high_water_mark_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.highWaterMark"

///|
fn byte_length_queuing_strategy_high_water_mark_ffi(obj: JsValue) -> Double {
  byte_length_queuing_strategy_high_water_mark_ffi_js(obj).unsafe_cast()
}

extern "js" fn byte_length_queuing_strategy_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn byte_length_queuing_strategy_size_ffi(obj: JsValue) -> Function {
  byte_length_queuing_strategy_size_ffi_js(obj).unsafe_cast()
}