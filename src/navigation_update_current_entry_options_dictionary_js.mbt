///|
extern "js" fn navigation_update_current_entry_options_ffi(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions =
  #|(state) => {
  #|  const obj = {};
  #|  if (state !== undefined) obj.state = state;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_update_current_entry_options_empty_ffi() -> NavigationUpdateCurrentEntryOptions = "() => {}"
