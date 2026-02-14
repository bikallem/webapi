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
  let result = idb_index_parameters_get_unique_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn IDBIndexParameters::multi_entry(self : IDBIndexParameters) -> Bool? {
  let result = idb_index_parameters_get_multi_entry_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
