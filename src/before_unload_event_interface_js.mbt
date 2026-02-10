extern "js" fn before_unload_event_return_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.returnValue"

///|
fn before_unload_event_return_value_ffi(obj: JsValue) -> String {
  before_unload_event_return_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn before_unload_event_set_return_value_ffi(obj: JsValue, return_value: JsValue) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"