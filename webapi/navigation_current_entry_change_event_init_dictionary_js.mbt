///|
extern "js" fn navigation_current_entry_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  navigation_type : JsValue,
  from : JsValue,
) -> NavigationCurrentEntryChangeEventInit =
  #|(bubbles, cancelable, composed, navigationType, from) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (navigationType !== undefined) obj.navigationType = navigationType;
  #|  if (from !== undefined) obj.from = from;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "() => {}"

///|
extern "js" fn navigation_current_entry_change_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn navigation_current_entry_change_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn navigation_current_entry_change_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn navigation_current_entry_change_event_init_get_navigation_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
extern "js" fn navigation_current_entry_change_event_init_get_from_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.from"

///|
fn navigation_current_entry_change_event_init_get_from_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_init_get_from_ffi_js(obj).unsafe_cast()
}
