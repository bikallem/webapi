///|
fn idb_index_parameters_ffi(
  unique : JsValue,
  multi_entry : JsValue,
) -> IDBIndexParameters = "webapi_IDBIndexParameters" "new"

///|
fn idb_index_parameters_empty_ffi() -> IDBIndexParameters = "webapi_Dictionary" "empty"
