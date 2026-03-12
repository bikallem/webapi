fn idb_key_range_lower_ffi(obj: JsValue) -> JsValue = "webapi_IDBKeyRange" "get_lower"

fn idb_key_range_upper_ffi(obj: JsValue) -> JsValue = "webapi_IDBKeyRange" "get_upper"

fn idb_key_range_lower_open_ffi(obj: JsValue) -> Bool = "webapi_IDBKeyRange" "get_lowerOpen"

fn idb_key_range_upper_open_ffi(obj: JsValue) -> Bool = "webapi_IDBKeyRange" "get_upperOpen"

fn idb_key_range_only_ffi(value: JsValue) -> IDBKeyRange = "webapi_IDBKeyRange" "only"

fn idb_key_range_lower_bound_ffi(lower: JsValue, open: JsValue) -> IDBKeyRange = "webapi_IDBKeyRange" "lowerBound"

fn idb_key_range_upper_bound_ffi(upper: JsValue, open: JsValue) -> IDBKeyRange = "webapi_IDBKeyRange" "upperBound"

fn idb_key_range_bound_ffi(lower: JsValue, upper: JsValue, lower_open: JsValue, upper_open: JsValue) -> IDBKeyRange = "webapi_IDBKeyRange" "bound"

fn idb_key_range_includes_ffi(obj: JsValue, key: JsValue) -> Bool = "webapi_IDBKeyRange" "includes"