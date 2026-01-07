// Do not edit. This file is generated.
// MoonBit type: StorageEventInit
// Specifications: dom.idl, html.idl

///|
/// [StorageEventInit](https://developer.mozilla.org/en-US/docs/Web/API/StorageEventInit)
#external
pub type StorageEventInit

///|
pub impl TJsValue for StorageEventInit with to_js(self : StorageEventInit) -> JsValue = "%identity"

///|
extern "js" fn storage_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  key : JsValue,
  old_value : JsValue,
  new_value : JsValue,
  url : JsValue,
  storage_area : JsValue,
) -> StorageEventInit =
  #|(bubbles, cancelable, composed, key, oldValue, newValue, url, storageArea) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (key !== undefined) obj.key = key;
  #|  if (oldValue !== undefined) obj.oldValue = oldValue;
  #|  if (newValue !== undefined) obj.newValue = newValue;
  #|  if (url !== undefined) obj.url = url;
  #|  if (storageArea !== undefined) obj.storageArea = storageArea;
  #|  return obj;
  #|}

///|
pub fn StorageEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  key? : String = JsValue::null(),
  old_value? : String = JsValue::null(),
  new_value? : String = JsValue::null(),
  url? : String = "",
  storage_area? : &TStorage = JsValue::null(),
) -> StorageEventInit {
  storage_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(key),
    TJsValue::to_js(old_value),
    TJsValue::to_js(new_value),
    TJsValue::to_js(url),
    TJsValue::to_js(storage_area),
  )
}

///|
extern "js" fn storage_event_init_empty_ffi() -> StorageEventInit = "() => {}"

///|
pub fn StorageEventInit::empty() -> StorageEventInit {
  storage_event_init_empty_ffi()
}
