// Do not edit. This file is generated.
// MoonBit type: IDBRequest
// Specifications: IndexedDB.idl

///|
/// [IDBRequest](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest)
#external
pub type IDBRequest

///|
pub impl TJsValue for IDBRequest with to_js(self : IDBRequest) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBRequest with from_js_any(value : JsAny) -> IDBRequest = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIDBRequest] IDBRequest::into(self : IDBRequest) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TIDBRequest] IDBRequest::unsafe_into(self : IDBRequest) -> T = "%identity"

///|
pub impl HasConstructor for IDBRequest with constructor_name() {
  "IDBRequest"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBRequest + HasConstructor] IDBRequest::try_into(
  self : IDBRequest,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TIDBRequest for IDBRequest

///|
pub impl TEventTarget for IDBRequest

///|
pub(open) trait TIDBRequestSource: TJsValue {}

///|
pub impl TIDBRequestSource for IDBObjectStore

///|
pub impl TIDBRequestSource for IDBIndex

///|
pub impl TIDBRequestSource for IDBCursor

///|
#external
pub type IDBRequestSource

///|
pub impl TJsValue for IDBRequestSource with to_js(self : IDBRequestSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBRequestSource with from_js_any(value : JsAny) -> IDBRequestSource = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIDBRequestSource + FromJsAny] IDBRequestSource::into(
  self : IDBRequestSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIDBRequestSource + FromJsAny] IDBRequestSource::unsafe_into(
  self : IDBRequestSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIDBRequestSource] IDBRequestSource::from(
  value : T,
) -> IDBRequestSource = "%identity"

///|
pub impl TIDBRequestSource for IDBRequestSource

///|
/// [IDBRequest](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest) interface.
pub trait TIDBRequest: TEventTarget {
  result(self : Self) -> JsValue = _
  error(self : Self) -> DOMException = _
  source(self : Self) -> IDBRequestSource = _
  transaction(self : Self) -> IDBTransaction = _
  ready_state(self : Self) -> IDBRequestReadyState = _
  onsuccess(self : Self) -> EventHandler = _
  set_onsuccess(self : Self, onsuccess : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [IDBRequest.result](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/result)
impl TIDBRequest with result(self : Self) -> JsValue {
  idb_request_result_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.error](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/error)
impl TIDBRequest with error(self : Self) -> DOMException {
  idb_request_error_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.source](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/source)
impl TIDBRequest with source(self : Self) -> IDBRequestSource {
  idb_request_source_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.transaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/transaction)
impl TIDBRequest with transaction(self : Self) -> IDBTransaction {
  idb_request_transaction_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.readyState](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/readyState)
impl TIDBRequest with ready_state(self : Self) -> IDBRequestReadyState {
  idb_request_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.onsuccess](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/onsuccess)
impl TIDBRequest with onsuccess(self : Self) -> EventHandler {
  idb_request_onsuccess_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.onsuccess](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/onsuccess)
impl TIDBRequest with set_onsuccess(self : Self, onsuccess : (Event) -> JsValue) -> Unit {
  idb_request_set_onsuccess_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onsuccess)),
  )
}

///|
/// [IDBRequest.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/onerror)
impl TIDBRequest with onerror(self : Self) -> EventHandler {
  idb_request_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRequest.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest/onerror)
impl TIDBRequest with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  idb_request_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_request_result_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.result"

///|
#cfg(target="js")
fn idb_request_result_ffi(obj : JsValue) -> JsValue {
  idb_request_result_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
#cfg(target="js")
fn idb_request_error_ffi(obj : JsValue) -> DOMException {
  idb_request_error_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn idb_request_source_ffi(obj : JsValue) -> IDBRequestSource {
  idb_request_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_transaction_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.transaction"

///|
#cfg(target="js")
fn idb_request_transaction_ffi(obj : JsValue) -> IDBTransaction {
  idb_request_transaction_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn idb_request_ready_state_ffi(obj : JsValue) -> IDBRequestReadyState {
  IDBRequestReadyState::from_unchecked(
    idb_request_ready_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_request_onsuccess_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuccess"

///|
#cfg(target="js")
fn idb_request_onsuccess_ffi(obj : JsValue) -> EventHandler {
  idb_request_onsuccess_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_set_onsuccess_ffi(
  obj : JsValue,
  onsuccess : JsValue,
) -> Unit = "(obj, onsuccess) => { obj.onsuccess = onsuccess; }"

///|
#cfg(target="js")
extern "js" fn idb_request_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn idb_request_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_request_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_request_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="wasm-gc")
fn idb_request_result_ffi(obj : JsValue) -> JsValue = "webapi_IDBRequest" "get_result"

///|
#cfg(target="wasm-gc")
fn idb_request_error_ffi(obj : JsValue) -> DOMException = "webapi_IDBRequest" "get_error"

///|
#cfg(target="wasm-gc")
fn idb_request_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBRequest" "get_source"

///|
#cfg(target="wasm-gc")
fn idb_request_source_ffi(obj : JsValue) -> IDBRequestSource {
  idb_request_source_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_request_transaction_ffi(obj : JsValue) -> IDBTransaction = "webapi_IDBRequest" "get_transaction"

///|
#cfg(target="wasm-gc")
fn idb_request_ready_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBRequest" "get_readyState"

///|
#cfg(target="wasm-gc")
fn idb_request_ready_state_ffi(obj : JsValue) -> IDBRequestReadyState {
  IDBRequestReadyState::from_unchecked(
    jsvalue_to_string(idb_request_ready_state_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn idb_request_onsuccess_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBRequest" "get_onsuccess"

///|
#cfg(target="wasm-gc")
fn idb_request_onsuccess_ffi(obj : JsValue) -> EventHandler {
  idb_request_onsuccess_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_request_set_onsuccess_ffi(obj : JsValue, onsuccess : JsValue) -> Unit = "webapi_IDBRequest" "set_onsuccess"

///|
#cfg(target="wasm-gc")
fn idb_request_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBRequest" "get_onerror"

///|
#cfg(target="wasm-gc")
fn idb_request_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_request_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_request_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_IDBRequest" "set_onerror"
