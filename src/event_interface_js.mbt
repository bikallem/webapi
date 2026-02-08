extern "js" fn event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> Event = "(type_, event_init_dict) => new Event(type_, event_init_dict)"

extern "js" fn event_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn event_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.target"

extern "js" fn event_src_element_ffi(obj: JsValue) -> JsValue = "(obj) => obj.srcElement"

extern "js" fn event_current_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentTarget"

extern "js" fn event_composed_path_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composedPath()"

extern "js" fn event_event_phase_ffi(obj: JsValue) -> JsValue = "(obj) => obj.eventPhase"

extern "js" fn event_stop_propagation_ffi(obj: JsValue) -> Unit = "(obj) => obj.stopPropagation()"

extern "js" fn event_cancel_bubble_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelBubble"

extern "js" fn event_set_cancel_bubble_ffi(obj: JsValue, cancel_bubble: JsValue) -> Unit = "(obj, cancelBubble) => { obj.cancelBubble = cancelBubble; }"

extern "js" fn event_stop_immediate_propagation_ffi(obj: JsValue) -> Unit = "(obj) => obj.stopImmediatePropagation()"

extern "js" fn event_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn event_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn event_return_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.returnValue"

extern "js" fn event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

extern "js" fn event_prevent_default_ffi(obj: JsValue) -> Unit = "(obj) => obj.preventDefault()"

extern "js" fn event_default_prevented_ffi(obj: JsValue) -> JsValue = "(obj) => obj.defaultPrevented"

extern "js" fn event_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn event_is_trusted_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isTrusted"

extern "js" fn event_time_stamp_ffi(obj: JsValue) -> JsValue = "(obj) => obj.timeStamp"

extern "js" fn event_init_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue) -> Unit = "(obj, type_, bubbles, cancelable) => obj.initEvent(type_, bubbles, cancelable)"