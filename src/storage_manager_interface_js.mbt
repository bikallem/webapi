///|
extern "js" fn storage_manager_persisted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persisted()"

///|
fn storage_manager_persisted_ffi(obj : JsValue) -> @js_async.Promise[Bool] {
  storage_manager_persisted_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_manager_persist_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persist()"

///|
fn storage_manager_persist_ffi(obj : JsValue) -> @js_async.Promise[Bool] {
  storage_manager_persist_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn storage_manager_estimate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.estimate()"

///|
fn storage_manager_estimate_ffi(
  obj : JsValue,
) -> @js_async.Promise[StorageEstimate] {
  storage_manager_estimate_ffi_js(obj).unsafe_cast()
}
