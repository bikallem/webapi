fn navigate_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, navigation_type: JsValue, destination: JsValue, can_intercept: JsValue, user_initiated: JsValue, hash_change: JsValue, signal: JsValue, form_data: JsValue, download_request: JsValue, info: JsValue, has_ua_visual_transition: JsValue, source_element: JsValue) -> NavigateEventInit = "webapi_NavigateEventInit" "new"

fn navigate_event_init_empty_ffi() -> NavigateEventInit = "webapi_Dictionary" "empty"

fn navigate_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_bubbles"

fn navigate_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_cancelable"

fn navigate_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_composed"

fn navigate_event_init_get_navigation_type_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_navigationType"

fn navigate_event_init_get_destination_ffi(obj: JsValue) -> NavigationDestination = "webapi_NavigateEventInit" "get_destination"

fn navigate_event_init_get_can_intercept_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_canIntercept"

fn navigate_event_init_get_user_initiated_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_userInitiated"

fn navigate_event_init_get_hash_change_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_hashChange"

fn navigate_event_init_get_signal_ffi(obj: JsValue) -> AbortSignal = "webapi_NavigateEventInit" "get_signal"

fn navigate_event_init_get_form_data_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_formData"

fn navigate_event_init_get_download_request_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_downloadRequest"

fn navigate_event_init_get_info_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_info"

fn navigate_event_init_get_has_ua_visual_transition_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_hasUAVisualTransition"

fn navigate_event_init_get_source_element_ffi(obj: JsValue) -> JsValue = "webapi_NavigateEventInit" "get_sourceElement"