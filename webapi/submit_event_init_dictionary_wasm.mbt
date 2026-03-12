fn submit_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, submitter: JsValue) -> SubmitEventInit = "webapi_SubmitEventInit" "new"

fn submit_event_init_empty_ffi() -> SubmitEventInit = "webapi_Dictionary" "empty"

fn submit_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_bubbles"

fn submit_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_cancelable"

fn submit_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_composed"

fn submit_event_init_get_submitter_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_submitter"