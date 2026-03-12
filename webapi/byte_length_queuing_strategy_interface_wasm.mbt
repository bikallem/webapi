fn byte_length_queuing_strategy_new_ffi(init: JsValue) -> ByteLengthQueuingStrategy = "webapi_ByteLengthQueuingStrategy" "new"

fn byte_length_queuing_strategy_high_water_mark_ffi(obj: JsValue) -> Double = "webapi_ByteLengthQueuingStrategy" "get_highWaterMark"

fn byte_length_queuing_strategy_size_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ByteLengthQueuingStrategy" "get_size"

///|
fn byte_length_queuing_strategy_size_ffi(obj: JsValue) -> Function {
  byte_length_queuing_strategy_size_ffi_wasm(obj).unsafe_cast()
}