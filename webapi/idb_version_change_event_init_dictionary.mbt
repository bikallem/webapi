// Do not edit. This file is generated.
// MoonBit type: IDBVersionChangeEventInit
// Specifications: dom.idl, IndexedDB.idl

/// [IDBVersionChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEventInit)
#external
pub type IDBVersionChangeEventInit

pub impl TJsValue for IDBVersionChangeEventInit with to_js(self: IDBVersionChangeEventInit) -> JsValue = "%identity"

pub impl FromJsAny for IDBVersionChangeEventInit with from_js_any(value : JsAny) -> IDBVersionChangeEventInit = "%identity"

pub fn IDBVersionChangeEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
old_version? : UInt64, 
new_version? : UInt64) -> IDBVersionChangeEventInit {
  idb_version_change_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(old_version), opt_to_js(new_version))
}

pub fn IDBVersionChangeEventInit::empty() -> IDBVersionChangeEventInit { idb_version_change_event_init_empty_ffi() }

pub fn IDBVersionChangeEventInit::bubbles(self : IDBVersionChangeEventInit) -> Bool? {
  idb_version_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn IDBVersionChangeEventInit::cancelable(self : IDBVersionChangeEventInit) -> Bool? {
  idb_version_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn IDBVersionChangeEventInit::composed(self : IDBVersionChangeEventInit) -> Bool? {
  idb_version_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn IDBVersionChangeEventInit::old_version(self : IDBVersionChangeEventInit) -> UInt64? {
  idb_version_change_event_init_get_old_version_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn IDBVersionChangeEventInit::new_version(self : IDBVersionChangeEventInit) -> UInt64? {
  idb_version_change_event_init_get_new_version_ffi(TJsValue::to_js(self)).to_option_prim()
}