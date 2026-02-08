fn navigate_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NavigateEvent = "webapi_NavigateEvent" "new"

fn navigate_event_navigation_type_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_navigationType"

fn navigate_event_destination_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_destination"

fn navigate_event_can_intercept_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_canIntercept"

fn navigate_event_user_initiated_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_userInitiated"

fn navigate_event_hash_change_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_hashChange"

fn navigate_event_signal_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_signal"

fn navigate_event_form_data_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_formData"

fn navigate_event_download_request_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_downloadRequest"

fn navigate_event_info_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_info"

fn navigate_event_has_ua_visual_transition_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_hasUAVisualTransition"

fn navigate_event_source_element_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEvent" "get_sourceElement"

fn navigate_event_intercept_ffi(obj: JsValue, options: JsValue) -> Unit = "webapi_NavigateEvent" "intercept"

fn navigate_event_scroll_ffi(obj: JsValue) -> Unit = "webapi_NavigateEvent" "scroll"