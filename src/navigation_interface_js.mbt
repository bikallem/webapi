extern "js" fn navigation_entries_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.entries()"

///|
fn navigation_entries_ffi(obj: JsValue) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_current_entry_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentEntry"

///|
fn navigation_current_entry_ffi(obj: JsValue) -> NavigationHistoryEntry {
  navigation_current_entry_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_update_current_entry_ffi(obj: JsValue, options: JsValue) -> Unit = "(obj, options) => obj.updateCurrentEntry(options)"

extern "js" fn navigation_transition_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.transition"

///|
fn navigation_transition_ffi(obj: JsValue) -> NavigationTransition {
  navigation_transition_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_activation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.activation"

///|
fn navigation_activation_ffi(obj: JsValue) -> NavigationActivation {
  navigation_activation_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_can_go_back_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.canGoBack"

///|
fn navigation_can_go_back_ffi(obj: JsValue) -> Bool {
  navigation_can_go_back_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_can_go_forward_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.canGoForward"

///|
fn navigation_can_go_forward_ffi(obj: JsValue) -> Bool {
  navigation_can_go_forward_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_navigate_ffi_js(obj: JsValue, url: JsValue, options: JsValue) -> JsValue = "(obj, url, options) => obj.navigate(url, options)"

///|
fn navigation_navigate_ffi(obj: JsValue, url: JsValue, options: JsValue) -> NavigationResult {
  navigation_navigate_ffi_js(obj, url, options).unsafe_cast()
}

extern "js" fn navigation_reload_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.reload(options)"

///|
fn navigation_reload_ffi(obj: JsValue, options: JsValue) -> NavigationResult {
  navigation_reload_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn navigation_traverse_to_ffi_js(obj: JsValue, key: JsValue, options: JsValue) -> JsValue = "(obj, key, options) => obj.traverseTo(key, options)"

///|
fn navigation_traverse_to_ffi(obj: JsValue, key: JsValue, options: JsValue) -> NavigationResult {
  navigation_traverse_to_ffi_js(obj, key, options).unsafe_cast()
}

extern "js" fn navigation_back_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.back(options)"

///|
fn navigation_back_ffi(obj: JsValue, options: JsValue) -> NavigationResult {
  navigation_back_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn navigation_forward_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.forward(options)"

///|
fn navigation_forward_ffi(obj: JsValue, options: JsValue) -> NavigationResult {
  navigation_forward_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn navigation_onnavigate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onnavigate"

///|
fn navigation_onnavigate_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigate_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_set_onnavigate_ffi(obj: JsValue, onnavigate: JsValue) -> Unit = "(obj, onnavigate) => { obj.onnavigate = onnavigate; }"

extern "js" fn navigation_onnavigatesuccess_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onnavigatesuccess"

///|
fn navigation_onnavigatesuccess_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigatesuccess_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_set_onnavigatesuccess_ffi(obj: JsValue, onnavigatesuccess: JsValue) -> Unit = "(obj, onnavigatesuccess) => { obj.onnavigatesuccess = onnavigatesuccess; }"

extern "js" fn navigation_onnavigateerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onnavigateerror"

///|
fn navigation_onnavigateerror_ffi(obj: JsValue) -> EventHandler {
  navigation_onnavigateerror_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_set_onnavigateerror_ffi(obj: JsValue, onnavigateerror: JsValue) -> Unit = "(obj, onnavigateerror) => { obj.onnavigateerror = onnavigateerror; }"

extern "js" fn navigation_oncurrententrychange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncurrententrychange"

///|
fn navigation_oncurrententrychange_ffi(obj: JsValue) -> EventHandler {
  navigation_oncurrententrychange_ffi_js(obj).unsafe_cast()
}

extern "js" fn navigation_set_oncurrententrychange_ffi(obj: JsValue, oncurrententrychange: JsValue) -> Unit = "(obj, oncurrententrychange) => { obj.oncurrententrychange = oncurrententrychange; }"