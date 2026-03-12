extern "js" fn idb_index_parameters_ffi(unique: JsValue, multi_entry: JsValue) -> IDBIndexParameters = 
#|(unique, multiEntry) => {
#|  const obj = {};
#|  if (unique !== undefined) obj.unique = unique;
#|  if (multiEntry !== undefined) obj.multiEntry = multiEntry;
#|  return obj;
#|}

extern "js" fn idb_index_parameters_empty_ffi() -> IDBIndexParameters = "() => {}"

extern "js" fn idb_index_parameters_get_unique_ffi(obj: JsValue) -> JsValue = "(obj) => obj.unique"

extern "js" fn idb_index_parameters_get_multi_entry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.multiEntry"