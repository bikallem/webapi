extern "js" fn promise_rejection_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PromiseRejectionEvent = "(type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict)"

extern "js" fn promise_rejection_event_promise_ffi(obj: JsValue) -> JsValue = "(obj) => obj.promise"

extern "js" fn promise_rejection_event_reason_ffi(obj: JsValue) -> JsValue = "(obj) => obj.reason"