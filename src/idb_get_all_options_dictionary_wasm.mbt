///|
fn idb_get_all_options_ffi(
  query : JsValue,
  count : JsValue,
  direction : JsValue,
) -> IDBGetAllOptions = "webapi_IDBGetAllOptions" "new"

///|
fn idb_get_all_options_empty_ffi() -> IDBGetAllOptions = "webapi_Dictionary" "empty"
