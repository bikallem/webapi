extern "js" fn composition_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CompositionEvent = "(type_, event_init_dict) => new CompositionEvent(type_, event_init_dict)"

extern "js" fn composition_event_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.data"

extern "js" fn composition_event_init_composition_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, data_arg: JsValue) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg) => obj.initCompositionEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, data_arg)"