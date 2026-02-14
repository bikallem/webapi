// Do not edit. This file is generated.
// MoonBit type: IDBTransactionOptions
// Specifications: IndexedDB.idl

///|
/// [IDBTransactionOptions](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransactionOptions)
#external
pub type IDBTransactionOptions

///|
pub impl TJsValue for IDBTransactionOptions with to_js(
  self : IDBTransactionOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBTransactionOptions with from_js_any(value : JsAny) -> IDBTransactionOptions = "%identity"

///|
pub fn IDBTransactionOptions::new(
  durability? : IDBTransactionDurability = IDBTransactionDurability::Default,
) -> IDBTransactionOptions {
  idb_transaction_options_ffi(TJsValue::to_js(durability))
}

///|
pub fn IDBTransactionOptions::empty() -> IDBTransactionOptions {
  idb_transaction_options_empty_ffi()
}
