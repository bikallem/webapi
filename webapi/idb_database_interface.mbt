// Do not edit. This file is generated.
// MoonBit type: IDBDatabase
// Specifications: IndexedDB.idl

///|
/// [IDBDatabase](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase)
#external
pub type IDBDatabase

///|
pub impl TJsValue for IDBDatabase with to_js(self : IDBDatabase) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBDatabase with from_js_any(value : JsAny) -> IDBDatabase = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIDBDatabase] IDBDatabase::into(self : IDBDatabase) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TIDBDatabase] IDBDatabase::unsafe_into(self : IDBDatabase) -> T = "%identity"

///|
pub impl HasConstructor for IDBDatabase with constructor_name() {
  "IDBDatabase"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBDatabase + HasConstructor] IDBDatabase::try_into(
  self : IDBDatabase,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TIDBDatabase for IDBDatabase

///|
pub impl TEventTarget for IDBDatabase

///|
pub(open) trait TIDBDatabaseTransactionStoreNames: TJsValue {}

///|
pub impl TIDBDatabaseTransactionStoreNames for String

///|
pub impl TIDBDatabaseTransactionStoreNames for Array[String]

///|
/// [IDBDatabase](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase) interface.
pub trait TIDBDatabase: TEventTarget {
  name(self : Self) -> String = _
  version(self : Self) -> UInt64 = _
  object_store_names(self : Self) -> DOMStringList = _
  transaction(
    self : Self,
    store_names : &TIDBDatabaseTransactionStoreNames,
    mode? : IDBTransactionMode,
    options? : IDBTransactionOptions,
  ) -> IDBTransaction = _
  close(self : Self) -> Unit = _
  create_object_store(
    self : Self,
    name : String,
    options? : IDBObjectStoreParameters,
  ) -> IDBObjectStore = _
  delete_object_store(self : Self, name : String) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onversionchange(self : Self) -> EventHandler = _
  set_onversionchange(self : Self, onversionchange : (Event) -> JsValue) -> Unit = _
}

///|
/// [IDBDatabase.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/name)
impl TIDBDatabase with name(self : Self) -> String {
  idb_database_name_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.version](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/version)
impl TIDBDatabase with version(self : Self) -> UInt64 {
  idb_database_version_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.objectStoreNames](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/objectStoreNames)
impl TIDBDatabase with object_store_names(self : Self) -> DOMStringList {
  idb_database_object_store_names_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.transaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/transaction)
impl TIDBDatabase with transaction(
  self : Self,
  store_names : &TIDBDatabaseTransactionStoreNames,
  mode? : IDBTransactionMode,
  options? : IDBTransactionOptions,
) -> IDBTransaction {
  idb_database_transaction_ffi(
    TJsValue::to_js(self),
    store_names.to_js(),
    opt_to_js(mode),
    opt_to_js(options),
  )
}

///|
/// [IDBDatabase.close](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/close)
impl TIDBDatabase with close(self : Self) -> Unit {
  idb_database_close_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.createObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/createObjectStore)
impl TIDBDatabase with create_object_store(
  self : Self,
  name : String,
  options? : IDBObjectStoreParameters,
) -> IDBObjectStore {
  idb_database_create_object_store_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(options),
  )
}

///|
/// [IDBDatabase.deleteObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/deleteObjectStore)
impl TIDBDatabase with delete_object_store(self : Self, name : String) -> Unit {
  idb_database_delete_object_store_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [IDBDatabase.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onabort)
impl TIDBDatabase with onabort(self : Self) -> EventHandler {
  idb_database_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onabort)
impl TIDBDatabase with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  idb_database_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [IDBDatabase.onclose](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onclose)
impl TIDBDatabase with onclose(self : Self) -> EventHandler {
  idb_database_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onclose](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onclose)
impl TIDBDatabase with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  idb_database_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [IDBDatabase.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onerror)
impl TIDBDatabase with onerror(self : Self) -> EventHandler {
  idb_database_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onerror)
impl TIDBDatabase with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  idb_database_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [IDBDatabase.onversionchange](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onversionchange)
impl TIDBDatabase with onversionchange(self : Self) -> EventHandler {
  idb_database_onversionchange_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onversionchange](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onversionchange)
impl TIDBDatabase with set_onversionchange(
  self : Self,
  onversionchange : (Event) -> JsValue,
) -> Unit {
  idb_database_set_onversionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onversionchange)),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_database_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn idb_database_name_ffi(obj : JsValue) -> String {
  idb_database_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_version_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.version"

///|
#cfg(target="js")
fn idb_database_version_ffi(obj : JsValue) -> UInt64 {
  idb_database_version_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_object_store_names_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.objectStoreNames"

///|
#cfg(target="js")
fn idb_database_object_store_names_ffi(obj : JsValue) -> DOMStringList {
  idb_database_object_store_names_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_transaction_ffi_js(
  obj : JsValue,
  store_names : JsValue,
  mode : JsValue,
  options : JsValue,
) -> JsValue = "(obj, store_names, mode, options) => obj.transaction(store_names, mode, options)"

///|
#cfg(target="js")
fn idb_database_transaction_ffi(
  obj : JsValue,
  store_names : JsValue,
  mode : JsValue,
  options : JsValue,
) -> IDBTransaction {
  idb_database_transaction_ffi_js(obj, store_names, mode, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
#cfg(target="js")
extern "js" fn idb_database_create_object_store_ffi_js(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, options) => obj.createObjectStore(name, options)"

///|
#cfg(target="js")
fn idb_database_create_object_store_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> IDBObjectStore {
  idb_database_create_object_store_ffi_js(obj, name, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_delete_object_store_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => obj.deleteObjectStore(name)"

///|
#cfg(target="js")
extern "js" fn idb_database_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn idb_database_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_database_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn idb_database_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
#cfg(target="js")
fn idb_database_onclose_ffi(obj : JsValue) -> EventHandler {
  idb_database_onclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
#cfg(target="js")
extern "js" fn idb_database_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn idb_database_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_database_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="js")
extern "js" fn idb_database_onversionchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onversionchange"

///|
#cfg(target="js")
fn idb_database_onversionchange_ffi(obj : JsValue) -> EventHandler {
  idb_database_onversionchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_database_set_onversionchange_ffi(
  obj : JsValue,
  onversionchange : JsValue,
) -> Unit = "(obj, onversionchange) => { obj.onversionchange = onversionchange; }"

///|
#cfg(target="wasm-gc")
fn idb_database_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBDatabase" "get_name"

///|
#cfg(target="wasm-gc")
fn idb_database_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(idb_database_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn idb_database_version_ffi(obj : JsValue) -> UInt64 = "webapi_IDBDatabase" "get_version"

///|
#cfg(target="wasm-gc")
fn idb_database_object_store_names_ffi(obj : JsValue) -> DOMStringList = "webapi_IDBDatabase" "get_objectStoreNames"

///|
#cfg(target="wasm-gc")
fn idb_database_transaction_ffi(
  obj : JsValue,
  store_names : JsValue,
  mode : JsValue,
  options : JsValue,
) -> IDBTransaction = "webapi_IDBDatabase" "transaction"

///|
#cfg(target="wasm-gc")
fn idb_database_close_ffi(obj : JsValue) -> Unit = "webapi_IDBDatabase" "close"

///|
#cfg(target="wasm-gc")
fn idb_database_create_object_store_ffi(
  obj : JsValue,
  name : JsValue,
  options : JsValue,
) -> IDBObjectStore = "webapi_IDBDatabase" "createObjectStore"

///|
#cfg(target="wasm-gc")
fn idb_database_delete_object_store_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_IDBDatabase" "deleteObjectStore"

///|
#cfg(target="wasm-gc")
fn idb_database_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBDatabase" "get_onabort"

///|
#cfg(target="wasm-gc")
fn idb_database_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_database_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_database_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_IDBDatabase" "set_onabort"

///|
#cfg(target="wasm-gc")
fn idb_database_onclose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBDatabase" "get_onclose"

///|
#cfg(target="wasm-gc")
fn idb_database_onclose_ffi(obj : JsValue) -> EventHandler {
  idb_database_onclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_database_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_IDBDatabase" "set_onclose"

///|
#cfg(target="wasm-gc")
fn idb_database_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBDatabase" "get_onerror"

///|
#cfg(target="wasm-gc")
fn idb_database_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_database_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_database_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_IDBDatabase" "set_onerror"

///|
#cfg(target="wasm-gc")
fn idb_database_onversionchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBDatabase" "get_onversionchange"

///|
#cfg(target="wasm-gc")
fn idb_database_onversionchange_ffi(obj : JsValue) -> EventHandler {
  idb_database_onversionchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_database_set_onversionchange_ffi(
  obj : JsValue,
  onversionchange : JsValue,
) -> Unit = "webapi_IDBDatabase" "set_onversionchange"
