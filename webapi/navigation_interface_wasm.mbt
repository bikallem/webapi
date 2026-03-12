fn navigation_entries_ffi_wasm(obj: JsValue) -> JsArray = "webapi_Navigation" "entries"

///|
fn navigation_entries_ffi(obj: JsValue) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi_wasm(obj).to_array()
}

fn navigation_current_entry_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_Navigation" "get_currentEntry"

fn navigation_update_current_entry_ffi(obj: JsValue, options: JsValue) -> Unit = "webapi_Navigation" "updateCurrentEntry"

fn navigation_transition_ffi(obj: JsValue) -> NavigationTransition = "webapi_Navigation" "get_transition"

fn navigation_activation_ffi(obj: JsValue) -> NavigationActivation = "webapi_Navigation" "get_activation"

fn navigation_can_go_back_ffi(obj: JsValue) -> Bool = "webapi_Navigation" "get_canGoBack"

fn navigation_can_go_forward_ffi(obj: JsValue) -> Bool = "webapi_Navigation" "get_canGoForward"

fn navigation_navigate_ffi(obj: JsValue, url: JsValue, options: JsValue) -> NavigationResult = "webapi_Navigation" "navigate"

fn navigation_reload_ffi(obj: JsValue, options: JsValue) -> NavigationResult = "webapi_Navigation" "reload"

fn navigation_traverse_to_ffi(obj: JsValue, key: JsValue, options: JsValue) -> NavigationResult = "webapi_Navigation" "traverseTo"

fn navigation_back_ffi(obj: JsValue, options: JsValue) -> NavigationResult = "webapi_Navigation" "back"

fn navigation_forward_ffi(obj: JsValue, options: JsValue) -> NavigationResult = "webapi_Navigation" "forward"

fn navigation_onnavigate_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Navigation" "get_onnavigate"

///|
fn navigation_onnavigate_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigate_ffi_wasm(obj).unsafe_cast()
}

fn navigation_set_onnavigate_ffi(obj: JsValue, onnavigate: JsValue) -> Unit = "webapi_Navigation" "set_onnavigate"

fn navigation_onnavigatesuccess_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Navigation" "get_onnavigatesuccess"

///|
fn navigation_onnavigatesuccess_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigatesuccess_ffi_wasm(obj).unsafe_cast()
}

fn navigation_set_onnavigatesuccess_ffi(obj: JsValue, onnavigatesuccess: JsValue) -> Unit = "webapi_Navigation" "set_onnavigatesuccess"

fn navigation_onnavigateerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Navigation" "get_onnavigateerror"

///|
fn navigation_onnavigateerror_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigateerror_ffi_wasm(obj).unsafe_cast()
}

fn navigation_set_onnavigateerror_ffi(obj: JsValue, onnavigateerror: JsValue) -> Unit = "webapi_Navigation" "set_onnavigateerror"

fn navigation_oncurrententrychange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Navigation" "get_oncurrententrychange"

///|
fn navigation_oncurrententrychange_ffi(obj: JsValue) -> EventHandler {
  navigation_oncurrententrychange_ffi_wasm(obj).unsafe_cast()
}

fn navigation_set_oncurrententrychange_ffi(obj: JsValue, oncurrententrychange: JsValue) -> Unit = "webapi_Navigation" "set_oncurrententrychange"