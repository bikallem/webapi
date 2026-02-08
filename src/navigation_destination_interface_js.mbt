extern "js" fn navigation_destination_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.url"

extern "js" fn navigation_destination_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.key"

extern "js" fn navigation_destination_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

extern "js" fn navigation_destination_index_ffi(obj: JsValue) -> JsValue = "(obj) => obj.index"

extern "js" fn navigation_destination_same_document_ffi(obj: JsValue) -> JsValue = "(obj) => obj.sameDocument"

extern "js" fn navigation_destination_get_state_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getState()"