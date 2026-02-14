///|
extern "js" fn performance_observer_init_ffi(
  entry_types : JsValue,
  type_ : JsValue,
  buffered : JsValue,
) -> PerformanceObserverInit =
  #|(entryTypes, type, buffered) => {
  #|  const obj = {};
  #|  if (entryTypes !== undefined) obj.entryTypes = entryTypes;
  #|  if (type !== undefined) obj.type = type;
  #|  if (buffered !== undefined) obj.buffered = buffered;
  #|  return obj;
  #|}

///|
extern "js" fn performance_observer_init_empty_ffi() -> PerformanceObserverInit = "() => {}"

///|
extern "js" fn performance_observer_init_get_entry_types_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.entryTypes"

///|
extern "js" fn performance_observer_init_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn performance_observer_init_get_buffered_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.buffered"
