// Auto-generated MoonBit bindings for HashChangeEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary HashChangeEventInit : EventInit {
//   USVString oldURL = "";
//   USVString newURL = "";
// };

///|
#external
pub type HashChangeEventInit

///|
pub impl TJsValue for HashChangeEventInit with to_js(self : HashChangeEventInit) -> JsValue = "%identity"

///|
fn hash_change_event_init_ffi(old_url : JsValue, new_url : JsValue) -> HashChangeEventInit = "webapi_HashChangeEventInit" "new"

///|
pub fn HashChangeEventInit::new(
  old_url? : String = "",
  new_url? : String = ""
) -> HashChangeEventInit {
  hash_change_event_init_ffi(TJsValue::to_js(old_url), TJsValue::to_js(new_url))
}

///|
pub fn HashChangeEventInit::empty() -> HashChangeEventInit = "webapi_Dictionary" "empty"