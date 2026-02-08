fn hash_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> HashChangeEvent = "webapi_HashChangeEvent" "new"

fn hash_change_event_old_url_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEvent" "get_oldURL"

fn hash_change_event_new_url_ffi(obj: JsValue) -> JsValue = "webapi_HashChangeEvent" "get_newURL"