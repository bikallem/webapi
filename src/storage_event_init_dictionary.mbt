// Auto-generated MoonBit bindings for StorageEventInit dictionary
// Do not edit manually

#external
pub type StorageEventInit

pub impl TJsValue for StorageEventInit with to_js(self: StorageEventInit) -> JsValue = "%identity"


fn storage_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, key : JsValue, old_value : JsValue, new_value : JsValue, url : JsValue, storage_area : JsValue) -> StorageEventInit = "webapi_StorageEventInit" "new"


pub fn StorageEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  key? : String? : String = String::null(),
  old_value? : String? : String = String::null(),
  new_value? : String? : String = String::null(),
  url? : String? : String = "",
  storage_area? : Storage? : Storage = Storage::null()) -> StorageEventInit {
    storage_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(key)
     ,TJsValue::to_js(old_value)
     ,TJsValue::to_js(new_value)
     ,TJsValue::to_js(url)
     ,TJsValue::to_js(storage_area)
    )
}


pub fn StorageEventInit::empty() -> StorageEventInit = "webapi_Dictionary" "empty"