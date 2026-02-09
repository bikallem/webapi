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
