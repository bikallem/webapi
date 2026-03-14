// Do not edit. This file is generated.
// MoonBit type: IDBIndexParameters
// Specifications: IndexedDB.idl

///|
/// [IDBIndexParameters](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndexParameters)
#external
pub type IDBIndexParameters

///|
pub impl TJsValue for IDBIndexParameters with to_js(self : IDBIndexParameters) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBIndexParameters with from_js_any(value : JsAny) -> IDBIndexParameters = "%identity"

///|
pub fn IDBIndexParameters::new(
  unique? : Bool,
  multi_entry? : Bool,
) -> IDBIndexParameters {
  idb_index_parameters_ffi(opt_to_js(unique), opt_to_js(multi_entry))
}

///|
pub fn IDBIndexParameters::empty() -> IDBIndexParameters {
  idb_index_parameters_empty_ffi()
}

///|
pub fn IDBIndexParameters::unique(self : IDBIndexParameters) -> Bool? {
  idb_index_parameters_get_unique_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IDBIndexParameters::multi_entry(self : IDBIndexParameters) -> Bool? {
  idb_index_parameters_get_multi_entry_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn idb_index_parameters_ffi(
  unique : JsValue,
  multi_entry : JsValue,
) -> IDBIndexParameters =
  #|(unique, multiEntry) => {
  #|  const obj = {};
  #|  if (unique !== undefined) obj.unique = unique;
  #|  if (multiEntry !== undefined) obj.multiEntry = multiEntry;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn idb_index_parameters_empty_ffi() -> IDBIndexParameters = "() => {}"

///|
#cfg(target="js")
extern "js" fn idb_index_parameters_get_unique_ffi(obj : JsValue) -> JsValue = "(obj) => obj.unique"

///|
#cfg(target="js")
extern "js" fn idb_index_parameters_get_multi_entry_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.multiEntry"

///|
#cfg(target="wasm-gc")
fn idb_index_parameters_ffi(
  unique : JsValue,
  multi_entry : JsValue,
) -> IDBIndexParameters = "webapi_IDBIndexParameters" "new"

///|
#cfg(target="wasm-gc")
fn idb_index_parameters_empty_ffi() -> IDBIndexParameters = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn idb_index_parameters_get_unique_ffi(obj : JsValue) -> JsValue = "webapi_IDBIndexParameters" "get_unique"

///|
#cfg(target="wasm-gc")
fn idb_index_parameters_get_multi_entry_ffi(obj : JsValue) -> JsValue = "webapi_IDBIndexParameters" "get_multiEntry"
