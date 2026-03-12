fn extendable_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> ExtendableEventInit = "webapi_ExtendableEventInit" "new"

fn extendable_event_init_empty_ffi() -> ExtendableEventInit = "webapi_Dictionary" "empty"

fn extendable_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_bubbles"

fn extendable_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_cancelable"

fn extendable_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_composed"