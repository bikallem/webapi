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

///|
pub(open) trait TIDBObjectStoreParametersGetKeyPath {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIDBObjectStoreParametersGetKeyPath for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub impl TIDBObjectStoreParametersGetKeyPath for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
#external
pub type IDBObjectStoreParametersGetKeyPath

///|
pub impl TJsValue for IDBObjectStoreParametersGetKeyPath with to_js(
  self : IDBObjectStoreParametersGetKeyPath,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBObjectStoreParametersGetKeyPath with from_js_any(
  value : JsAny,
) -> IDBObjectStoreParametersGetKeyPath = "%identity"

///|
pub fn[T : TIDBObjectStoreParametersGetKeyPath + FromJsAny] IDBObjectStoreParametersGetKeyPath::into(
  self : IDBObjectStoreParametersGetKeyPath,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIDBObjectStoreParametersGetKeyPath] IDBObjectStoreParametersGetKeyPath::from(
  value : T,
) -> IDBObjectStoreParametersGetKeyPath = "%identity"

///|
pub impl TIDBObjectStoreParametersGetKeyPath for IDBObjectStoreParametersGetKeyPath with to_js(
  self : IDBObjectStoreParametersGetKeyPath,
) -> JsValue = "%identity"

///|
pub fn IDBObjectStoreParameters::key_path(
  self : IDBObjectStoreParameters,
) -> IDBObjectStoreParametersGetKeyPath? {
  let result = idb_object_store_parameters_get_key_path_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn IDBObjectStoreParameters::auto_increment(
  self : IDBObjectStoreParameters,
) -> Bool? {
  let result = idb_object_store_parameters_get_auto_increment_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
