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
pub(open) trait TIDBObjectStoreParametersNewKeyPath: TJsValue {}

///|
pub impl TIDBObjectStoreParametersNewKeyPath for String

///|
pub impl TIDBObjectStoreParametersNewKeyPath for Array[String]

///|
pub fn IDBObjectStoreParameters::new(
  key_path? : &TIDBObjectStoreParametersNewKeyPath,
  auto_increment? : Bool,
) -> IDBObjectStoreParameters {
  idb_object_store_parameters_ffi(
    match key_path {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(auto_increment),
  )
}

///|
pub fn IDBObjectStoreParameters::empty() -> IDBObjectStoreParameters {
  idb_object_store_parameters_empty_ffi()
}

///|
pub(open) trait TIDBObjectStoreParametersGetKeyPath: TJsValue {}

///|
pub impl TIDBObjectStoreParametersGetKeyPath for String

///|
pub impl TIDBObjectStoreParametersGetKeyPath for Array[String]

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
pub impl TIDBObjectStoreParametersGetKeyPath for IDBObjectStoreParametersGetKeyPath

///|
pub fn IDBObjectStoreParameters::key_path(
  self : IDBObjectStoreParameters,
) -> IDBObjectStoreParametersGetKeyPath? {
  idb_object_store_parameters_get_key_path_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn IDBObjectStoreParameters::auto_increment(
  self : IDBObjectStoreParameters,
) -> Bool? {
  idb_object_store_parameters_get_auto_increment_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_parameters_ffi(
  key_path : JsValue,
  auto_increment : JsValue,
) -> IDBObjectStoreParameters =
  #|(keyPath, autoIncrement) => {
  #|  const obj = {};
  #|  if (keyPath !== undefined) obj.keyPath = keyPath;
  #|  if (autoIncrement !== undefined) obj.autoIncrement = autoIncrement;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn idb_object_store_parameters_empty_ffi() -> IDBObjectStoreParameters = "() => {}"

///|
#cfg(target="js")
extern "js" fn idb_object_store_parameters_get_key_path_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.keyPath"

///|
#cfg(target="js")
extern "js" fn idb_object_store_parameters_get_auto_increment_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.autoIncrement"

///|
#cfg(target="wasm-gc")
fn idb_object_store_parameters_ffi(
  key_path : JsValue,
  auto_increment : JsValue,
) -> IDBObjectStoreParameters = "webapi_IDBObjectStoreParameters" "new"

///|
#cfg(target="wasm-gc")
fn idb_object_store_parameters_empty_ffi() -> IDBObjectStoreParameters = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn idb_object_store_parameters_get_key_path_ffi(obj : JsValue) -> JsValue = "webapi_IDBObjectStoreParameters" "get_keyPath"

///|
#cfg(target="wasm-gc")
fn idb_object_store_parameters_get_auto_increment_ffi(obj : JsValue) -> JsValue = "webapi_IDBObjectStoreParameters" "get_autoIncrement"
