///|
extern "js" fn navigation_reload_options_ffi(
  info : JsValue,
  state : JsValue,
) -> NavigationReloadOptions =
  #|(info, state) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  if (state !== undefined) obj.state = state;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_reload_options_empty_ffi() -> NavigationReloadOptions = "() => {}"

///|
extern "js" fn navigation_reload_options_get_info_ffi(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
extern "js" fn navigation_reload_options_get_state_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.state"
