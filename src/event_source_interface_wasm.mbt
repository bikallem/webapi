fn event_source_new_ffi(url: JsValue, event_source_init_dict: JsValue) -> EventSource = "webapi_EventSource" "new"

fn event_source_url_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_url"

fn event_source_with_credentials_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_withCredentials"

fn event_source_ready_state_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_readyState"

fn event_source_onopen_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_onopen"

fn event_source_set_onopen_ffi(obj: JsValue, onopen: JsValue) -> Unit = "webapi_EventSource" "set_onopen"

fn event_source_onmessage_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_onmessage"

fn event_source_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_EventSource" "set_onmessage"

fn event_source_onerror_ffi(obj: JsValue) -> JsValue = "webapi_EventSource" "get_onerror"

fn event_source_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_EventSource" "set_onerror"

fn event_source_close_ffi(obj: JsValue) -> Unit = "webapi_EventSource" "close"