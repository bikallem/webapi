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
extern "js" fn storage_event_init_empty_ffi() -> StorageEventInit = "() => {}"
