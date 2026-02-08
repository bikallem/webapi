///|
extern "js" fn navigate_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigateEvent = "(type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)"

///|
extern "js" fn navigate_event_navigation_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.navigationType"

///|
extern "js" fn navigate_event_destination_ffi(obj : JsValue) -> JsValue = "(obj) => obj.destination"

///|
extern "js" fn navigate_event_can_intercept_ffi(obj : JsValue) -> JsValue = "(obj) => obj.canIntercept"

///|
extern "js" fn navigate_event_user_initiated_ffi(obj : JsValue) -> JsValue = "(obj) => obj.userInitiated"

///|
extern "js" fn navigate_event_hash_change_ffi(obj : JsValue) -> JsValue = "(obj) => obj.hashChange"

///|
extern "js" fn navigate_event_signal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
extern "js" fn navigate_event_form_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formData"

///|
extern "js" fn navigate_event_download_request_ffi(obj : JsValue) -> JsValue = "(obj) => obj.downloadRequest"

///|
extern "js" fn navigate_event_info_ffi(obj : JsValue) -> JsValue = "(obj) => obj.info"

///|
extern "js" fn navigate_event_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
extern "js" fn navigate_event_source_element_ffi(obj : JsValue) -> JsValue = "(obj) => obj.sourceElement"

///|
extern "js" fn navigate_event_intercept_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.intercept(options)"

///|
extern "js" fn navigate_event_scroll_ffi(obj : JsValue) -> Unit = "(obj) => obj.scroll()"
