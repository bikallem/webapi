extern "js" fn command_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, source: JsValue, command: JsValue) -> CommandEventInit = 
#|(bubbles, cancelable, composed, source, command) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (source !== undefined) obj.source = source;
#|  if (command !== undefined) obj.command = command;
#|  return obj;
#|}

extern "js" fn command_event_init_empty_ffi() -> CommandEventInit = "() => {}"

extern "js" fn command_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn command_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn command_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn command_event_init_get_source_ffi(obj: JsValue) -> JsValue = "(obj) => obj.source"

extern "js" fn command_event_init_get_command_ffi(obj: JsValue) -> JsValue = "(obj) => obj.command"