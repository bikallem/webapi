///|
#external
pub type CommandEvent

///|
pub impl TJsValue for CommandEvent with to_js(self : CommandEvent) -> JsValue = "%identity"

///|
pub fn[T : TCommandEvent] CommandEvent::into(self : CommandEvent) -> T = "%identity"

///|
pub impl TCommandEvent for CommandEvent

///|
pub impl TEvent for CommandEvent

///|
extern "js" fn command_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CommandEvent = "(type_, event_init_dict) => new CommandEvent(type_, event_init_dict)"

///|
pub fn CommandEvent::new(
  type_ : String,
  event_init_dict? : CommandEventInit = CommandEventInit::empty(),
) -> CommandEvent {
  command_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TCommandEvent: TEvent {}
