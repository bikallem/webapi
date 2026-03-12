extern "js" fn performance_observer_callback_options_ffi(dropped_entries_count: JsValue) -> PerformanceObserverCallbackOptions = 
#|(droppedEntriesCount) => {
#|  const obj = {};
#|  if (droppedEntriesCount !== undefined) obj.droppedEntriesCount = droppedEntriesCount;
#|  return obj;
#|}

extern "js" fn performance_observer_callback_options_empty_ffi() -> PerformanceObserverCallbackOptions = "() => {}"

extern "js" fn performance_observer_callback_options_get_dropped_entries_count_ffi(obj: JsValue) -> JsValue = "(obj) => obj.droppedEntriesCount"