extern "js" fn queuing_strategy_ffi(high_water_mark: JsValue, size: JsValue) -> QueuingStrategy = 
#|(highWaterMark, size) => {
#|  const obj = {};
#|  if (highWaterMark !== undefined) obj.highWaterMark = highWaterMark;
#|  if (size !== undefined) obj.size = size;
#|  return obj;
#|}

extern "js" fn queuing_strategy_empty_ffi() -> QueuingStrategy = "() => {}"

extern "js" fn queuing_strategy_get_high_water_mark_ffi(obj: JsValue) -> JsValue = "(obj) => obj.highWaterMark"

extern "js" fn queuing_strategy_get_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.size"