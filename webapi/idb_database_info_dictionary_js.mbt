///|
extern "js" fn idb_database_info_ffi(
  name : JsValue,
  version : JsValue,
) -> IDBDatabaseInfo =
  #|(name, version) => {
  #|  const obj = {};
  #|  if (name !== undefined) obj.name = name;
  #|  if (version !== undefined) obj.version = version;
  #|  return obj;
  #|}

///|
extern "js" fn idb_database_info_empty_ffi() -> IDBDatabaseInfo = "() => {}"

///|
extern "js" fn idb_database_info_get_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn idb_database_info_get_version_ffi(obj : JsValue) -> JsValue = "(obj) => obj.version"
