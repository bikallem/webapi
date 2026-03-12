///|
fn navigation_transition_navigation_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_navigationType"

///|
fn navigation_transition_navigation_type_ffi(obj : JsValue) -> NavigationType {
  NavigationType::from_unchecked(
    jsvalue_to_string(navigation_transition_navigation_type_ffi_wasm(obj)),
  )
}

///|
fn navigation_transition_from_ffi(obj : JsValue) -> NavigationHistoryEntry = "webapi_NavigationTransition" "get_from"

///|
fn navigation_transition_to_ffi(obj : JsValue) -> NavigationDestination = "webapi_NavigationTransition" "get_to"

///|
fn navigation_transition_committed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_committed"

///|
fn navigation_transition_committed_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_committed_ffi_wasm(obj).unsafe_cast()
}

///|
fn navigation_transition_finished_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationTransition" "get_finished"

///|
fn navigation_transition_finished_ffi(obj : JsValue) -> JsPromise[JsValue] {
  navigation_transition_finished_ffi_wasm(obj).unsafe_cast()
}
