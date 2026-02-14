// Do not edit. This file is generated.
// MoonBit type: IDBGetAllOptions
// Specifications: IndexedDB.idl

///|
/// [IDBGetAllOptions](https://developer.mozilla.org/en-US/docs/Web/API/IDBGetAllOptions)
#external
pub type IDBGetAllOptions

///|
pub impl TJsValue for IDBGetAllOptions with to_js(self : IDBGetAllOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBGetAllOptions with from_js_any(value : JsAny) -> IDBGetAllOptions = "%identity"

///|
pub fn IDBGetAllOptions::new(
  query? : JsValue = JsValue::null(),
  count? : UInt,
  direction? : IDBCursorDirection = IDBCursorDirection::Next,
) -> IDBGetAllOptions {
  idb_get_all_options_ffi(
    TJsValue::to_js(query),
    opt_to_js(count),
    TJsValue::to_js(direction),
  )
}

///|
pub fn IDBGetAllOptions::empty() -> IDBGetAllOptions {
  idb_get_all_options_empty_ffi()
}
