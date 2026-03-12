fn queuing_strategy_ffi(high_water_mark: JsValue, size: JsValue) -> QueuingStrategy = "webapi_QueuingStrategy" "new"

fn queuing_strategy_empty_ffi() -> QueuingStrategy = "webapi_Dictionary" "empty"

fn queuing_strategy_get_high_water_mark_ffi(obj: JsValue) -> JsValue = "webapi_QueuingStrategy" "get_highWaterMark"

fn queuing_strategy_get_size_ffi(obj: JsValue) -> JsValue = "webapi_QueuingStrategy" "get_size"