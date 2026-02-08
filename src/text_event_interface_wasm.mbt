fn text_event_data_ffi(obj: JsValue) -> JsValue = "webapi_TextEvent" "get_data"

fn text_event_init_text_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, view: JsValue, data: JsValue) -> Unit = "webapi_TextEvent" "initTextEvent"