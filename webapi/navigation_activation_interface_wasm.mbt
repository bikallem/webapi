fn navigation_activation_from_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationActivation" "get_from"

fn navigation_activation_entry_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationActivation" "get_entry"

fn navigation_activation_navigation_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationActivation" "get_navigationType"

///|
fn navigation_activation_navigation_type_ffi(obj: JsValue) -> NavigationType {
  NavigationType::from_unchecked(jsvalue_to_string(navigation_activation_navigation_type_ffi_wasm(obj)))
}