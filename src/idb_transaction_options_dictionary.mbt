// Do not edit. This file is generated.
// MoonBit type: IDBTransactionOptions
// Specifications: IndexedDB.idl

/// [IDBTransactionOptions](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransactionOptions)
#external
pub type IDBTransactionOptions

pub impl TJsValue for IDBTransactionOptions with to_js(self: IDBTransactionOptions) -> JsValue = "%identity"

pub impl FromJsAny for IDBTransactionOptions with from_js_any(value : JsAny) -> IDBTransactionOptions = "%identity"

pub fn IDBTransactionOptions::new(durability? : IDBTransactionDurability) -> IDBTransactionOptions {
  idb_transaction_options_ffi(opt_to_js(durability))
}

pub fn IDBTransactionOptions::empty() -> IDBTransactionOptions { idb_transaction_options_empty_ffi() }

pub fn IDBTransactionOptions::durability(self : IDBTransactionOptions) -> IDBTransactionDurability? {
  idb_transaction_options_get_durability_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn idb_transaction_options_ffi(durability: JsValue) -> IDBTransactionOptions = 
#|(durability) => {
#|  const obj = {};
#|  if (durability !== undefined) obj.durability = durability;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn idb_transaction_options_empty_ffi() -> IDBTransactionOptions = "() => {}"

#cfg(target="js")
extern "js" fn idb_transaction_options_get_durability_ffi(obj: JsValue) -> JsValue = "(obj) => obj.durability"

#cfg(target="wasm-gc")
fn idb_transaction_options_ffi(durability: JsValue) -> IDBTransactionOptions = "webapi_IDBTransactionOptions" "new"

#cfg(target="wasm-gc")
fn idb_transaction_options_empty_ffi() -> IDBTransactionOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn idb_transaction_options_get_durability_ffi(obj: JsValue) -> JsValue = "webapi_IDBTransactionOptions" "get_durability"