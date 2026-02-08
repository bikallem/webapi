fn focus_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FocusEvent = "webapi_FocusEvent" "new"

fn focus_event_related_target_ffi(obj: JsValue) -> JsValue = "webapi_FocusEvent" "get_relatedTarget"