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
