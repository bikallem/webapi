// Do not edit. This file is generated.
// MoonBit type: IDBVersionChangeEventInit
// Specifications: dom.idl, IndexedDB.idl

///|
/// [IDBVersionChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEventInit)
#external
pub type IDBVersionChangeEventInit

///|
pub impl TJsValue for IDBVersionChangeEventInit with to_js(
  self : IDBVersionChangeEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBVersionChangeEventInit with from_js_any(value : JsAny) -> IDBVersionChangeEventInit = "%identity"

///|
pub fn IDBVersionChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  old_version? : UInt64 = (0 : UInt64),
  new_version? : UInt64,
) -> IDBVersionChangeEventInit {
  idb_version_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(old_version),
    opt_to_js(new_version),
  )
}

///|
pub fn IDBVersionChangeEventInit::empty() -> IDBVersionChangeEventInit {
  idb_version_change_event_init_empty_ffi()
}

///|
pub fn IDBVersionChangeEventInit::bubbles(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  let result = idb_version_change_event_init_get_bubbles_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn IDBVersionChangeEventInit::cancelable(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  let result = idb_version_change_event_init_get_cancelable_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn IDBVersionChangeEventInit::composed(
  self : IDBVersionChangeEventInit,
) -> Bool? {
  let result = idb_version_change_event_init_get_composed_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn IDBVersionChangeEventInit::old_version(
  self : IDBVersionChangeEventInit,
) -> UInt64? {
  let result = idb_version_change_event_init_get_old_version_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn IDBVersionChangeEventInit::new_version(
  self : IDBVersionChangeEventInit,
) -> UInt64? {
  let result = idb_version_change_event_init_get_new_version_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
