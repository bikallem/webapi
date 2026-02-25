///|
extern "js" fn queuing_strategy_init_ffi(
  high_water_mark : JsValue,
) -> QueuingStrategyInit =
  #|(highWaterMark) => {
  #|  const obj = {};
  #|  if (highWaterMark !== undefined) obj.highWaterMark = highWaterMark;
  #|  return obj;
  #|}

///|
extern "js" fn queuing_strategy_init_empty_ffi() -> QueuingStrategyInit = "() => {}"

///|
extern "js" fn queuing_strategy_init_get_high_water_mark_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.highWaterMark"

///|
fn queuing_strategy_init_get_high_water_mark_ffi(obj : JsValue) -> Double {
  queuing_strategy_init_get_high_water_mark_ffi_js(obj).unsafe_cast()
}
