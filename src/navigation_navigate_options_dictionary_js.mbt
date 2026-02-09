///|
extern "js" fn navigation_navigate_options_ffi(
  info : JsValue,
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions =
  #|(info, state, history) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  if (state !== undefined) obj.state = state;
  #|  if (history !== undefined) obj.history = history;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "() => {}"
