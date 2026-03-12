extern "js" fn toggle_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ToggleEvent = "(type_, event_init_dict) => new ToggleEvent(type_, event_init_dict)"

extern "js" fn toggle_event_old_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oldState"

///|
fn toggle_event_old_state_ffi(obj: JsValue) -> String {
  toggle_event_old_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn toggle_event_new_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.newState"

///|
fn toggle_event_new_state_ffi(obj: JsValue) -> String {
  toggle_event_new_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn toggle_event_source_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.source"

///|
fn toggle_event_source_ffi(obj: JsValue) -> Element {
  toggle_event_source_ffi_js(obj).unsafe_cast()
}