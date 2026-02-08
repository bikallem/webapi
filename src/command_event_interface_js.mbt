///|
extern "js" fn command_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CommandEvent = "(type_, event_init_dict) => new CommandEvent(type_, event_init_dict)"

///|
extern "js" fn command_event_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
extern "js" fn command_event_command_ffi(obj : JsValue) -> JsValue = "(obj) => obj.command"
