extern "js" fn storage_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, key: JsValue, old_value: JsValue, new_value: JsValue, url: JsValue, storage_area: JsValue) -> StorageEventInit = 
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

extern "js" fn storage_event_init_empty_ffi() -> StorageEventInit = "() => {}"

extern "js" fn storage_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn storage_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn storage_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn storage_event_init_get_key_ffi(obj: JsValue) -> JsValue = "(obj) => obj.key"

extern "js" fn storage_event_init_get_old_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oldValue"

extern "js" fn storage_event_init_get_new_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.newValue"

extern "js" fn storage_event_init_get_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.url"

extern "js" fn storage_event_init_get_storage_area_ffi(obj: JsValue) -> JsValue = "(obj) => obj.storageArea"