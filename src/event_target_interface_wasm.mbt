fn event_target_new_ffi() -> EventTarget = "webapi_EventTarget" "new"

fn event_target_add_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "webapi_EventTarget" "addEventListener"

fn event_target_remove_event_listener_ffi(obj: JsValue, type_: JsValue, callback: JsValue, options: JsValue) -> Unit = "webapi_EventTarget" "removeEventListener"

fn event_target_dispatch_event_ffi(obj: JsValue, event: JsValue) -> Bool = "webapi_EventTarget" "dispatchEvent"