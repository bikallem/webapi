extern "js" fn user_activation_has_been_active_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasBeenActive"

///|
fn user_activation_has_been_active_ffi(obj: JsValue) -> Bool {
  user_activation_has_been_active_ffi_js(obj).unsafe_cast()
}

extern "js" fn user_activation_is_active_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isActive"

///|
fn user_activation_is_active_ffi(obj: JsValue) -> Bool {
  user_activation_is_active_ffi_js(obj).unsafe_cast()
}