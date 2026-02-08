extern "js" fn custom_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CustomEvent = "(type_, event_init_dict) => new CustomEvent(type_, event_init_dict)"

extern "js" fn custom_event_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

extern "js" fn custom_event_init_custom_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, detail: JsValue) -> Unit = "(obj, type_, bubbles, cancelable, detail) => obj.initCustomEvent(type_, bubbles, cancelable, detail)"