///|
fn queuing_strategy_ffi(
  high_water_mark : JsValue,
  size : JsValue,
) -> QueuingStrategy = "webapi_QueuingStrategy" "new"

///|
fn queuing_strategy_empty_ffi() -> QueuingStrategy = "webapi_Dictionary" "empty"
