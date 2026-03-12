fn idb_transaction_options_ffi(durability: JsValue) -> IDBTransactionOptions = "webapi_IDBTransactionOptions" "new"

fn idb_transaction_options_empty_ffi() -> IDBTransactionOptions = "webapi_Dictionary" "empty"

fn idb_transaction_options_get_durability_ffi(obj: JsValue) -> JsValue = "webapi_IDBTransactionOptions" "get_durability"