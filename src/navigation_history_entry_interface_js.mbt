extern "js" fn navigation_history_entry_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.url"

extern "js" fn navigation_history_entry_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.key"

extern "js" fn navigation_history_entry_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

extern "js" fn navigation_history_entry_index_ffi(obj: JsValue) -> JsValue = "(obj) => obj.index"

extern "js" fn navigation_history_entry_same_document_ffi(obj: JsValue) -> JsValue = "(obj) => obj.sameDocument"

extern "js" fn navigation_history_entry_get_state_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getState()"

extern "js" fn navigation_history_entry_ondispose_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ondispose"

extern "js" fn navigation_history_entry_set_ondispose_ffi(obj: JsValue, ondispose: JsValue) -> Unit = "(obj, ondispose) => { obj.ondispose = ondispose; }"