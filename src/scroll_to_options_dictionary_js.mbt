///|
extern "js" fn scroll_to_options_ffi(
  behavior : JsValue,
  left : JsValue,
  top : JsValue,
) -> ScrollToOptions =
  #|(behavior, left, top) => {
  #|  const obj = {};
  #|  if (behavior !== undefined) obj.behavior = behavior;
  #|  if (left !== undefined) obj.left = left;
  #|  if (top !== undefined) obj.top = top;
  #|  return obj;
  #|}

///|
extern "js" fn scroll_to_options_empty_ffi() -> ScrollToOptions = "() => {}"

///|
extern "js" fn scroll_to_options_get_behavior_ffi(obj : JsValue) -> JsValue = "(obj) => obj.behavior"

///|
extern "js" fn scroll_to_options_get_left_ffi(obj : JsValue) -> JsValue = "(obj) => obj.left"

///|
extern "js" fn scroll_to_options_get_top_ffi(obj : JsValue) -> JsValue = "(obj) => obj.top"
