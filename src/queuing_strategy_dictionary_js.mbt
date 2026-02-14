///|
extern "js" fn queuing_strategy_ffi(
  high_water_mark : JsValue,
  size : JsValue,
) -> QueuingStrategy =
  #|(highWaterMark, size) => {
  #|  const obj = {};
  #|  if (highWaterMark !== undefined) obj.highWaterMark = highWaterMark;
  #|  if (size !== undefined) obj.size = size;
  #|  return obj;
  #|}

///|
extern "js" fn queuing_strategy_empty_ffi() -> QueuingStrategy = "() => {}"
