///|
extern "js" fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions =
  #|(preventScroll, focusVisible) => {
  #|  const obj = {};
  #|  if (preventScroll !== undefined) obj.preventScroll = preventScroll;
  #|  if (focusVisible !== undefined) obj.focusVisible = focusVisible;
  #|  return obj;
  #|}

///|
extern "js" fn focus_options_empty_ffi() -> FocusOptions = "() => {}"

///|
extern "js" fn focus_options_get_prevent_scroll_ffi(obj : JsValue) -> JsValue = "(obj) => obj.preventScroll"

///|
extern "js" fn focus_options_get_focus_visible_ffi(obj : JsValue) -> JsValue = "(obj) => obj.focusVisible"
