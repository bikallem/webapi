// Do not edit. This file is generated.
// MoonBit type: StorageManager
// Specifications: fs.idl, storage.idl

///|
/// [StorageManager](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager)
#external
pub type StorageManager

///|
pub impl TJsValue for StorageManager with to_js(self : StorageManager) -> JsValue = "%identity"

///|
pub impl FromJsAny for StorageManager with from_js_any(value : JsAny) -> StorageManager = "%identity"

///|
pub fn[T : TStorageManager] StorageManager::into(self : StorageManager) -> T = "%identity"

///|
pub impl TStorageManager for StorageManager

///|
/// [StorageManager](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager) interface.
pub trait TStorageManager: TJsValue {
  get_directory(self : Self) -> JsPromise[FileSystemDirectoryHandle] = _
  persisted(self : Self) -> JsPromise[Bool] = _
  persist(self : Self) -> JsPromise[Bool] = _
  estimate(self : Self) -> JsPromise[StorageEstimate] = _
}

///|
/// [StorageManager.getDirectory](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/getDirectory)
impl TStorageManager with get_directory(self : Self) -> JsPromise[
  FileSystemDirectoryHandle,
] {
  storage_manager_get_directory_ffi(TJsValue::to_js(self))
}

///|
/// [StorageManager.persisted](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/persisted)
impl TStorageManager with persisted(self : Self) -> JsPromise[Bool] {
  storage_manager_persisted_ffi(TJsValue::to_js(self))
}

///|
/// [StorageManager.persist](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/persist)
impl TStorageManager with persist(self : Self) -> JsPromise[Bool] {
  storage_manager_persist_ffi(TJsValue::to_js(self))
}

///|
/// [StorageManager.estimate](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/estimate)
impl TStorageManager with estimate(self : Self) -> JsPromise[StorageEstimate] {
  storage_manager_estimate_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn storage_manager_get_directory_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getDirectory()"

///|
#cfg(target="js")
fn storage_manager_get_directory_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  storage_manager_get_directory_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn storage_manager_persisted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persisted()"

///|
#cfg(target="js")
fn storage_manager_persisted_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persisted_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn storage_manager_persist_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.persist()"

///|
#cfg(target="js")
fn storage_manager_persist_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persist_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn storage_manager_estimate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.estimate()"

///|
#cfg(target="js")
fn storage_manager_estimate_ffi(obj : JsValue) -> JsPromise[StorageEstimate] {
  storage_manager_estimate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn storage_manager_get_directory_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "getDirectory"

///|
#cfg(target="wasm-gc")
fn storage_manager_get_directory_ffi(
  obj : JsValue,
) -> JsPromise[FileSystemDirectoryHandle] {
  storage_manager_get_directory_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn storage_manager_persisted_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persisted"

///|
#cfg(target="wasm-gc")
fn storage_manager_persisted_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persisted_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn storage_manager_persist_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persist"

///|
#cfg(target="wasm-gc")
fn storage_manager_persist_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persist_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn storage_manager_estimate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "estimate"

///|
#cfg(target="wasm-gc")
fn storage_manager_estimate_ffi(obj : JsValue) -> JsPromise[StorageEstimate] {
  storage_manager_estimate_ffi_wasm(obj).unsafe_cast()
}
