extern "js" fn idb_object_store_parameters_ffi(key_path: JsValue, auto_increment: JsValue) -> IDBObjectStoreParameters = 
#|(keyPath, autoIncrement) => {
#|  const obj = {};
#|  if (keyPath !== undefined) obj.keyPath = keyPath;
#|  if (autoIncrement !== undefined) obj.autoIncrement = autoIncrement;
#|  return obj;
#|}

extern "js" fn idb_object_store_parameters_empty_ffi() -> IDBObjectStoreParameters = "() => {}"

extern "js" fn idb_object_store_parameters_get_key_path_ffi(obj: JsValue) -> JsValue = "(obj) => obj.keyPath"

extern "js" fn idb_object_store_parameters_get_auto_increment_ffi(obj: JsValue) -> JsValue = "(obj) => obj.autoIncrement"