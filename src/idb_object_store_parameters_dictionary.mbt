// Do not edit. This file is generated.
// MoonBit type: IDBObjectStoreParameters
// Specifications: IndexedDB.idl

///|
/// [IDBObjectStoreParameters](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStoreParameters)
#external
pub type IDBObjectStoreParameters

///|
pub impl TJsValue for IDBObjectStoreParameters with to_js(
  self : IDBObjectStoreParameters,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBObjectStoreParameters with from_js_any(value : JsAny) -> IDBObjectStoreParameters = "%identity"

///|
pub(open) trait TIDBObjectStoreParametersNewKeyPath {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIDBObjectStoreParametersNewKeyPath for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub impl TIDBObjectStoreParametersNewKeyPath for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
pub fn IDBObjectStoreParameters::new(
  key_path? : &TIDBObjectStoreParametersNewKeyPath,
  auto_increment? : Bool = false,
) -> IDBObjectStoreParameters {
  idb_object_store_parameters_ffi(
    match key_path {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    TJsValue::to_js(auto_increment),
  )
}

///|
pub fn IDBObjectStoreParameters::empty() -> IDBObjectStoreParameters {
  idb_object_store_parameters_empty_ffi()
}
