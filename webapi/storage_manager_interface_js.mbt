///|
extern "js" fn storage_manager_get_directory_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getDirectory()"

///|
fn storage_manager_get_directory_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  storage_manager_get_directory_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_manager_persisted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persisted()"

///|
fn storage_manager_persisted_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persisted_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_manager_persist_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persist()"

///|
fn storage_manager_persist_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persist_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_manager_estimate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.estimate()"

///|
fn storage_manager_estimate_ffi(obj : JsValue) -> JsPromise[StorageEstimate] {
  storage_manager_estimate_ffi_js(obj).unsafe_cast()
}
