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
