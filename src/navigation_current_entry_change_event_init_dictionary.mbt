///|
#external
pub type NavigationCurrentEntryChangeEventInit

///|
pub impl TJsValue for NavigationCurrentEntryChangeEventInit with to_js(
  self : NavigationCurrentEntryChangeEventInit,
) -> JsValue = "%identity"

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
pub fn NavigationCurrentEntryChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  navigation_type? : NavigationType = JsValue::null(),
  from : NavigationHistoryEntry,
) -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(navigation_type),
    TJsValue::to_js(from),
  )
}

///|
extern "js" fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "() => {}"

///|
pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_empty_ffi()
}
