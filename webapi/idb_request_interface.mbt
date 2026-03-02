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
pub fn[T : TIDBRequest] IDBRequest::into(self : IDBRequest) -> T = "%identity"

///|
pub impl TIDBRequest for IDBRequest

///|
pub impl TEventTarget for IDBRequest

///|
pub(open) trait TIDBRequestSource {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIDBRequestSource for IDBObjectStore with to_js(self : IDBObjectStore) -> JsValue = "%identity"

///|
pub impl TIDBRequestSource for IDBIndex with to_js(self : IDBIndex) -> JsValue = "%identity"

///|
pub impl TIDBRequestSource for IDBCursor with to_js(self : IDBCursor) -> JsValue = "%identity"

///|
#external
pub type IDBRequestSource

///|
pub impl TJsValue for IDBRequestSource with to_js(self : IDBRequestSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBRequestSource with from_js_any(value : JsAny) -> IDBRequestSource = "%identity"

///|
pub fn[T : TIDBRequestSource + FromJsAny] IDBRequestSource::into(
  self : IDBRequestSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIDBRequestSource] IDBRequestSource::from(
  value : T,
) -> IDBRequestSource = "%identity"

///|
pub impl TIDBRequestSource for IDBRequestSource with to_js(
  self : IDBRequestSource,
) -> JsValue = "%identity"

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
