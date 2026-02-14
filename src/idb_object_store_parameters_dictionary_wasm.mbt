///|
fn idb_object_store_parameters_ffi(
  key_path : JsValue,
  auto_increment : JsValue,
) -> IDBObjectStoreParameters = "webapi_IDBObjectStoreParameters" "new"

///|
fn idb_object_store_parameters_empty_ffi() -> IDBObjectStoreParameters = "webapi_Dictionary" "empty"
