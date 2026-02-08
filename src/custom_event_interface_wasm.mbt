fn custom_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CustomEvent = "webapi_CustomEvent" "new"

fn custom_event_detail_ffi(obj: JsValue) -> JsValue = "webapi_CustomEvent" "get_detail"

fn custom_event_init_custom_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, detail: JsValue) -> Unit = "webapi_CustomEvent" "initCustomEvent"