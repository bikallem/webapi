// Do not edit. This file is generated.
// MoonBit type: StorageEventInit
// Specifications: dom.idl, html.idl

/// [StorageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/StorageEventInit)
#external
pub type StorageEventInit

pub impl TJsValue for StorageEventInit with to_js(self: StorageEventInit) -> JsValue = "%identity"

pub impl FromJsAny for StorageEventInit with from_js_any(value : JsAny) -> StorageEventInit = "%identity"

pub fn StorageEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
key? : String, 
old_value? : String, 
new_value? : String, 
url? : String, 
storage_area? : &TStorage) -> StorageEventInit {
  storage_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(key), opt_to_js(old_value), opt_to_js(new_value), opt_to_js(url), opt_to_js(storage_area))
}

pub fn StorageEventInit::empty() -> StorageEventInit { storage_event_init_empty_ffi() }

pub fn StorageEventInit::bubbles(self : StorageEventInit) -> Bool? {
  storage_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::cancelable(self : StorageEventInit) -> Bool? {
  storage_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::composed(self : StorageEventInit) -> Bool? {
  storage_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::key(self : StorageEventInit) -> String? {
  storage_event_init_get_key_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::old_value(self : StorageEventInit) -> String? {
  storage_event_init_get_old_value_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::new_value(self : StorageEventInit) -> String? {
  storage_event_init_get_new_value_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::url(self : StorageEventInit) -> String? {
  storage_event_init_get_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn StorageEventInit::storage_area(self : StorageEventInit) -> Storage? {
  storage_event_init_get_storage_area_ffi(TJsValue::to_js(self)).to_option()
}