extern "js" fn navigation_activation_from_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.from"

///|
fn navigation_activation_from_ffi(obj: JsValue) -> NavigationHistoryEntry {
  navigation_activation_from_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_activation_entry_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.entry"

///|
fn navigation_activation_entry_ffi(obj: JsValue) -> NavigationHistoryEntry {
  navigation_activation_entry_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_activation_navigation_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"

///|
fn navigation_activation_navigation_type_ffi(obj: JsValue) -> NavigationType {
  navigation_activation_navigation_type_ffi_js(obj).unsafe_cast()
}