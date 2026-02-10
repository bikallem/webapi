extern "js" fn navigate_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NavigateEvent = "(type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)"

extern "js" fn navigate_event_navigation_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"

///|
fn navigate_event_navigation_type_ffi(obj: JsValue) -> NavigationType {
  navigate_event_navigation_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_destination_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.destination"

///|
fn navigate_event_destination_ffi(obj: JsValue) -> NavigationDestination {
  navigate_event_destination_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_can_intercept_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.canIntercept"

///|
fn navigate_event_can_intercept_ffi(obj: JsValue) -> Bool {
  navigate_event_can_intercept_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_user_initiated_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.userInitiated"

///|
fn navigate_event_user_initiated_ffi(obj: JsValue) -> Bool {
  navigate_event_user_initiated_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_hash_change_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hashChange"

///|
fn navigate_event_hash_change_ffi(obj: JsValue) -> Bool {
  navigate_event_hash_change_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_signal_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.signal"

///|
fn navigate_event_signal_ffi(obj: JsValue) -> AbortSignal {
  navigate_event_signal_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData"

///|
fn navigate_event_form_data_ffi(obj: JsValue) -> FormData {
  navigate_event_form_data_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_download_request_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.downloadRequest"

///|
fn navigate_event_download_request_ffi(obj: JsValue) -> String {
  navigate_event_download_request_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_info_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.info"

///|
fn navigate_event_info_ffi(obj: JsValue) -> JsValue {
  navigate_event_info_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_has_ua_visual_transition_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
fn navigate_event_has_ua_visual_transition_ffi(obj: JsValue) -> Bool {
  navigate_event_has_ua_visual_transition_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_source_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sourceElement"

///|
fn navigate_event_source_element_ffi(obj: JsValue) -> Element {
  navigate_event_source_element_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigate_event_intercept_ffi(obj: JsValue, options: JsValue) -> Unit = "(obj, options) => obj.intercept(options)"

extern "js" fn navigate_event_scroll_ffi(obj: JsValue) -> Unit = "(obj) => obj.scroll()"