// Auto-generated MoonBit bindings for HashChangeEventInit dictionary
// Do not edit manually

#external
pub type HashChangeEventInit

pub impl TJsValue for HashChangeEventInit with to_js(self: HashChangeEventInit) -> JsValue = "%identity"


fn hash_change_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, old_url : JsValue, new_url : JsValue) -> HashChangeEventInit = "webapi_HashChangeEventInit" "new"


pub fn HashChangeEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  old_url? : String? : String = "",
  new_url? : String? : String = "") -> HashChangeEventInit {
    hash_change_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(old_url)
     ,TJsValue::to_js(new_url)
    )
}


pub fn HashChangeEventInit::empty() -> HashChangeEventInit = "webapi_Dictionary" "empty"