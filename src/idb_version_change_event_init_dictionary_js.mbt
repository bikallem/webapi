///|
extern "js" fn idb_version_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_version : JsValue,
  new_version : JsValue,
) -> IDBVersionChangeEventInit =
  #|(bubbles, cancelable, composed, oldVersion, newVersion) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldVersion !== undefined) obj.oldVersion = oldVersion;
  #|  if (newVersion !== undefined) obj.newVersion = newVersion;
  #|  return obj;
  #|}

///|
extern "js" fn idb_version_change_event_init_empty_ffi() -> IDBVersionChangeEventInit = "() => {}"
