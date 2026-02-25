///|
fn queuing_strategy_init_ffi(high_water_mark : JsValue) -> QueuingStrategyInit = "webapi_QueuingStrategyInit" "new"

///|
fn queuing_strategy_init_empty_ffi() -> QueuingStrategyInit = "webapi_Dictionary" "empty"

///|
fn queuing_strategy_init_get_high_water_mark_ffi(obj : JsValue) -> Double = "webapi_QueuingStrategyInit" "get_highWaterMark"
