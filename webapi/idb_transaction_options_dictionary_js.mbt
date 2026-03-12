extern "js" fn idb_transaction_options_ffi(durability: JsValue) -> IDBTransactionOptions = 
#|(durability) => {
#|  const obj = {};
#|  if (durability !== undefined) obj.durability = durability;
#|  return obj;
#|}

extern "js" fn idb_transaction_options_empty_ffi() -> IDBTransactionOptions = "() => {}"

extern "js" fn idb_transaction_options_get_durability_ffi(obj: JsValue) -> JsValue = "(obj) => obj.durability"