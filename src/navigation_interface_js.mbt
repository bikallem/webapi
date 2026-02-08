extern "js" fn navigation_entries_ffi(obj: JsValue) -> JsValue = "(obj) => obj.entries()"

extern "js" fn navigation_current_entry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentEntry"

extern "js" fn navigation_update_current_entry_ffi(obj: JsValue, options: JsValue) -> Unit = "(obj, options) => obj.updateCurrentEntry(options)"

extern "js" fn navigation_transition_ffi(obj: JsValue) -> JsValue = "(obj) => obj.transition"

extern "js" fn navigation_activation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.activation"

extern "js" fn navigation_can_go_back_ffi(obj: JsValue) -> JsValue = "(obj) => obj.canGoBack"

extern "js" fn navigation_can_go_forward_ffi(obj: JsValue) -> JsValue = "(obj) => obj.canGoForward"

extern "js" fn navigation_navigate_ffi(obj: JsValue, url: JsValue, options: JsValue) -> JsValue = "(obj, url, options) => obj.navigate(url, options)"

extern "js" fn navigation_reload_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.reload(options)"

extern "js" fn navigation_traverse_to_ffi(obj: JsValue, key: JsValue, options: JsValue) -> JsValue = "(obj, key, options) => obj.traverseTo(key, options)"

extern "js" fn navigation_back_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.back(options)"

extern "js" fn navigation_forward_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.forward(options)"

extern "js" fn navigation_onnavigate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onnavigate"

extern "js" fn navigation_set_onnavigate_ffi(obj: JsValue, onnavigate: JsValue) -> Unit = "(obj, onnavigate) => { obj.onnavigate = onnavigate; }"

extern "js" fn navigation_onnavigatesuccess_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onnavigatesuccess"

extern "js" fn navigation_set_onnavigatesuccess_ffi(obj: JsValue, onnavigatesuccess: JsValue) -> Unit = "(obj, onnavigatesuccess) => { obj.onnavigatesuccess = onnavigatesuccess; }"

extern "js" fn navigation_onnavigateerror_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onnavigateerror"

extern "js" fn navigation_set_onnavigateerror_ffi(obj: JsValue, onnavigateerror: JsValue) -> Unit = "(obj, onnavigateerror) => { obj.onnavigateerror = onnavigateerror; }"

extern "js" fn navigation_oncurrententrychange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncurrententrychange"

extern "js" fn navigation_set_oncurrententrychange_ffi(obj: JsValue, oncurrententrychange: JsValue) -> Unit = "(obj, oncurrententrychange) => { obj.oncurrententrychange = oncurrententrychange; }"