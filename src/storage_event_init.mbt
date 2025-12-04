// Auto-generated MoonBit bindings for StorageEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary StorageEventInit : EventInit {
//   DOMString? key = null;
//   DOMString? oldValue = null;
//   DOMString? newValue = null;
//   USVString url = "";
//   Storage? storageArea = null;
// };

///|
#external
pub type StorageEventInit

///|
pub impl TJsValue for StorageEventInit with to_js(self : StorageEventInit) -> JsValue = "%identity"

///|
fn storage_event_init_ffi(
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> StorageEventInit = "webapi_StorageEventInit" "new"

///|
pub fn StorageEventInit::new(
  key? : String = JsValue::null(),
  old_value? : String = JsValue::null(),
  new_value? : String = JsValue::null(),
  url? : String = "",
  storage_area? : Storage = JsValue::null(),
) -> StorageEventInit {
  storage_event_init_ffi(
    TJsValue::to_js(key),
    TJsValue::to_js(old_value),
    TJsValue::to_js(new_value),
    TJsValue::to_js(url),
    TJsValue::to_js(storage_area),
  )
}

///|
pub fn StorageEventInit::empty() -> StorageEventInit = "webapi_Dictionary" "empty"
