// Do not edit. This file is generated.
// MoonBit type: StorageManager
// Specifications: storage.idl

///|
/// [StorageManager](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager)
#external
pub type StorageManager

///|
pub impl TJsValue for StorageManager with to_js(self : StorageManager) -> JsValue = "%identity"

///|
pub fn[T : TStorageManager] StorageManager::into(self : StorageManager) -> T = "%identity"

///|
pub impl TStorageManager for StorageManager

///|
/// [StorageManager](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager) interface.
pub trait TStorageManager: TJsValue {
  persisted(self : Self) -> @js_async.Promise[Bool] = _
  persist(self : Self) -> @js_async.Promise[Bool] = _
  estimate(self : Self) -> @js_async.Promise[StorageEstimate] = _
}

///|
/// [StorageManager.persisted](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/persisted)
impl TStorageManager with persisted(self : Self) -> @js_async.Promise[Bool] {
  storage_manager_persisted_ffi(TJsValue::to_js(self))
}

///|
/// [StorageManager.persist](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/persist)
impl TStorageManager with persist(self : Self) -> @js_async.Promise[Bool] {
  storage_manager_persist_ffi(TJsValue::to_js(self))
}

///|
/// [StorageManager.estimate](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager/estimate)
impl TStorageManager with estimate(self : Self) -> @js_async.Promise[
  StorageEstimate,
] {
  storage_manager_estimate_ffi(TJsValue::to_js(self))
}
