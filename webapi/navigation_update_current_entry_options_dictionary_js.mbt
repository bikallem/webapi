extern "js" fn navigation_update_current_entry_options_ffi(state: JsValue) -> NavigationUpdateCurrentEntryOptions = 
#|(state) => {
#|  const obj = {};
#|  if (state !== undefined) obj.state = state;
#|  return obj;
#|}

extern "js" fn navigation_update_current_entry_options_empty_ffi() -> NavigationUpdateCurrentEntryOptions = "() => {}"

extern "js" fn navigation_update_current_entry_options_get_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
fn navigation_update_current_entry_options_get_state_ffi(obj: JsValue) -> JsValue {
  navigation_update_current_entry_options_get_state_ffi_js(obj).unsafe_cast()
}