fn idb_version_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> IDBVersionChangeEvent = "webapi_IDBVersionChangeEvent" "new"

fn idb_version_change_event_old_version_ffi(obj: JsValue) -> UInt64 = "webapi_IDBVersionChangeEvent" "get_oldVersion"

fn idb_version_change_event_new_version_ffi(obj: JsValue) -> UInt64 = "webapi_IDBVersionChangeEvent" "get_newVersion"