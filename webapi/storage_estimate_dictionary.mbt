// Do not edit. This file is generated.
// MoonBit type: StorageEstimate
// Specifications: storage.idl

///|
/// [StorageEstimate](https://developer.mozilla.org/en-US/docs/Web/API/StorageEstimate)
#external
pub type StorageEstimate

///|
pub impl TJsValue for StorageEstimate with to_js(self : StorageEstimate) -> JsValue = "%identity"

///|
pub impl FromJsAny for StorageEstimate with from_js_any(value : JsAny) -> StorageEstimate = "%identity"

///|
pub fn StorageEstimate::new(
  usage? : UInt64,
  quota? : UInt64,
) -> StorageEstimate {
  storage_estimate_ffi(opt_to_js(usage), opt_to_js(quota))
}

///|
pub fn StorageEstimate::empty() -> StorageEstimate {
  storage_estimate_empty_ffi()
}

///|
pub fn StorageEstimate::usage(self : StorageEstimate) -> UInt64? {
  storage_estimate_get_usage_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn StorageEstimate::quota(self : StorageEstimate) -> UInt64? {
  storage_estimate_get_quota_ffi(TJsValue::to_js(self)).to_option_prim()
}
