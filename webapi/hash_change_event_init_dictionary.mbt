// Do not edit. This file is generated.
// MoonBit type: HashChangeEventInit
// Specifications: dom.idl, html.idl

/// [HashChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEventInit)
#external
pub type HashChangeEventInit

pub impl TJsValue for HashChangeEventInit with to_js(self: HashChangeEventInit) -> JsValue = "%identity"

pub impl FromJsAny for HashChangeEventInit with from_js_any(value : JsAny) -> HashChangeEventInit = "%identity"

pub fn HashChangeEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
old_url? : String, 
new_url? : String) -> HashChangeEventInit {
  hash_change_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(old_url), opt_to_js(new_url))
}

pub fn HashChangeEventInit::empty() -> HashChangeEventInit { hash_change_event_init_empty_ffi() }

pub fn HashChangeEventInit::bubbles(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::cancelable(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::composed(self : HashChangeEventInit) -> Bool? {
  hash_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::old_url(self : HashChangeEventInit) -> String? {
  hash_change_event_init_get_old_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn HashChangeEventInit::new_url(self : HashChangeEventInit) -> String? {
  hash_change_event_init_get_new_url_ffi(TJsValue::to_js(self)).to_option_prim()
}