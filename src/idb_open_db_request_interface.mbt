// Do not edit. This file is generated.
// MoonBit type: IDBOpenDBRequest
// Specifications: IndexedDB.idl

/// [IDBOpenDBRequest](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest)
#external
pub type IDBOpenDBRequest

pub impl TJsValue for IDBOpenDBRequest with to_js(self: IDBOpenDBRequest) -> JsValue = "%identity"

pub impl FromJsAny for IDBOpenDBRequest with from_js_any(value : JsAny) -> IDBOpenDBRequest = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TIDBOpenDBRequest] IDBOpenDBRequest::into(self : IDBOpenDBRequest) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TIDBOpenDBRequest] IDBOpenDBRequest::unsafe_into(self : IDBOpenDBRequest) -> T = "%identity"

pub impl HasConstructor for IDBOpenDBRequest with constructor_name() { "IDBOpenDBRequest" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBOpenDBRequest + HasConstructor] IDBOpenDBRequest::try_into(self : IDBOpenDBRequest) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TIDBOpenDBRequest for IDBOpenDBRequest

pub impl TIDBRequest for IDBOpenDBRequest

pub impl TEventTarget for IDBOpenDBRequest

/// [IDBOpenDBRequest](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest) interface.
pub trait TIDBOpenDBRequest: TIDBRequest {
  onblocked(self : Self) -> EventHandler = _
  set_onblocked(self : Self, onblocked : (Event) -> JsValue) -> Unit = _
  onupgradeneeded(self : Self) -> EventHandler = _
  set_onupgradeneeded(self : Self, onupgradeneeded : (Event) -> JsValue) -> Unit = _
}

/// [IDBOpenDBRequest.onblocked](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest/onblocked)
impl TIDBOpenDBRequest with onblocked(self : Self) -> EventHandler {
  idb_open_db_request_onblocked_ffi(TJsValue::to_js(self))
}

/// [IDBOpenDBRequest.onblocked](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest/onblocked)
impl TIDBOpenDBRequest with set_onblocked(self : Self, 
onblocked : (Event) -> JsValue) -> Unit {
  idb_open_db_request_set_onblocked_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onblocked)))
}

/// [IDBOpenDBRequest.onupgradeneeded](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest/onupgradeneeded)
impl TIDBOpenDBRequest with onupgradeneeded(self : Self) -> EventHandler {
  idb_open_db_request_onupgradeneeded_ffi(TJsValue::to_js(self))
}

/// [IDBOpenDBRequest.onupgradeneeded](https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest/onupgradeneeded)
impl TIDBOpenDBRequest with set_onupgradeneeded(self : Self, 
onupgradeneeded : (Event) -> JsValue) -> Unit {
  idb_open_db_request_set_onupgradeneeded_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onupgradeneeded)))
}

#cfg(target="js")
extern "js" fn idb_open_db_request_onblocked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onblocked"

///|
#cfg(target="js")
fn idb_open_db_request_onblocked_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onblocked_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_open_db_request_set_onblocked_ffi(obj: JsValue, onblocked: JsValue) -> Unit = "(obj, onblocked) => { obj.onblocked = onblocked; }"

#cfg(target="js")
extern "js" fn idb_open_db_request_onupgradeneeded_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onupgradeneeded"

///|
#cfg(target="js")
fn idb_open_db_request_onupgradeneeded_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onupgradeneeded_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_open_db_request_set_onupgradeneeded_ffi(obj: JsValue, onupgradeneeded: JsValue) -> Unit = "(obj, onupgradeneeded) => { obj.onupgradeneeded = onupgradeneeded; }"

#cfg(target="wasm-gc")
fn idb_open_db_request_onblocked_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBOpenDBRequest" "get_onblocked"

///|
#cfg(target="wasm-gc")
fn idb_open_db_request_onblocked_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onblocked_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_open_db_request_set_onblocked_ffi(obj: JsValue, onblocked: JsValue) -> Unit = "webapi_IDBOpenDBRequest" "set_onblocked"

#cfg(target="wasm-gc")
fn idb_open_db_request_onupgradeneeded_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBOpenDBRequest" "get_onupgradeneeded"

///|
#cfg(target="wasm-gc")
fn idb_open_db_request_onupgradeneeded_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onupgradeneeded_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_open_db_request_set_onupgradeneeded_ffi(obj: JsValue, onupgradeneeded: JsValue) -> Unit = "webapi_IDBOpenDBRequest" "set_onupgradeneeded"