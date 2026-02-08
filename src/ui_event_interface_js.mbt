extern "js" fn ui_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> UIEvent = "(type_, event_init_dict) => new UIEvent(type_, event_init_dict)"

extern "js" fn ui_event_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

extern "js" fn ui_event_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

extern "js" fn ui_event_init_ui_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, detail_arg: JsValue) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => obj.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)"

extern "js" fn ui_event_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"