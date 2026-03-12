fn event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> EventInit = "webapi_EventInit" "new"

fn event_init_empty_ffi() -> EventInit = "webapi_Dictionary" "empty"

fn event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_EventInit" "get_bubbles"

fn event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_EventInit" "get_cancelable"

fn event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_EventInit" "get_composed"