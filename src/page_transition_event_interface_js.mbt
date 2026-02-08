extern "js" fn page_transition_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageTransitionEvent = "(type_, event_init_dict) => new PageTransitionEvent(type_, event_init_dict)"

extern "js" fn page_transition_event_persisted_ffi(obj: JsValue) -> JsValue = "(obj) => obj.persisted"