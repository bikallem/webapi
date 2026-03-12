// Do not edit. This file is generated.
// MoonBit type: CommandEvent
// Specifications: html.idl

/// [CommandEvent](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent)
#external
pub type CommandEvent

pub impl TJsValue for CommandEvent with to_js(self: CommandEvent) -> JsValue = "%identity"

pub impl FromJsAny for CommandEvent with from_js_any(value : JsAny) -> CommandEvent = "%identity"

pub fn[T: TCommandEvent] CommandEvent::into(self : CommandEvent) -> T = "%identity"

pub impl TCommandEvent for CommandEvent

pub impl TEvent for CommandEvent

pub fn CommandEvent::new(type_ : String, 
event_init_dict? : CommandEventInit) -> CommandEvent {
  command_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [CommandEvent](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent) interface.
pub trait TCommandEvent: TEvent {
  source(self : Self) -> Element = _
  command(self : Self) -> String = _
}

/// [CommandEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent/source)
impl TCommandEvent with source(self : Self) -> Element {
  command_event_source_ffi(TJsValue::to_js(self))
}

/// [CommandEvent.command](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent/command)
impl TCommandEvent with command(self : Self) -> String {
  command_event_command_ffi(TJsValue::to_js(self))
}