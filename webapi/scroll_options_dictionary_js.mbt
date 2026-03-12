extern "js" fn scroll_options_ffi(behavior: JsValue) -> ScrollOptions = 
#|(behavior) => {
#|  const obj = {};
#|  if (behavior !== undefined) obj.behavior = behavior;
#|  return obj;
#|}

extern "js" fn scroll_options_empty_ffi() -> ScrollOptions = "() => {}"

extern "js" fn scroll_options_get_behavior_ffi(obj: JsValue) -> JsValue = "(obj) => obj.behavior"