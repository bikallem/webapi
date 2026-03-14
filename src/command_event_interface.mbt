// Do not edit. This file is generated.
// MoonBit type: CommandEvent
// Specifications: html.idl

///|
/// [CommandEvent](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent)
#external
pub type CommandEvent

///|
pub impl TJsValue for CommandEvent with to_js(self : CommandEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for CommandEvent with from_js_any(value : JsAny) -> CommandEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCommandEvent] CommandEvent::into(self : CommandEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCommandEvent] CommandEvent::unsafe_into(self : CommandEvent) -> T = "%identity"

///|
pub impl HasConstructor for CommandEvent with constructor_name() {
  "CommandEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCommandEvent + HasConstructor] CommandEvent::try_into(
  self : CommandEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCommandEvent for CommandEvent

///|
pub impl TEvent for CommandEvent

///|
pub fn CommandEvent::new(
  type_ : String,
  event_init_dict? : CommandEventInit,
) -> CommandEvent {
  command_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [CommandEvent](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent) interface.
pub trait TCommandEvent: TEvent {
  source(self : Self) -> Element = _
  command(self : Self) -> String = _
}

///|
/// [CommandEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent/source)
impl TCommandEvent with source(self : Self) -> Element {
  command_event_source_ffi(TJsValue::to_js(self))
}

///|
/// [CommandEvent.command](https://developer.mozilla.org/en-US/docs/Web/API/CommandEvent/command)
impl TCommandEvent with command(self : Self) -> String {
  command_event_command_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn command_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CommandEvent = "(type_, event_init_dict) => new CommandEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn command_event_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn command_event_source_ffi(obj : JsValue) -> Element {
  command_event_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn command_event_command_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.command"

///|
#cfg(target="js")
fn command_event_command_ffi(obj : JsValue) -> String {
  command_event_command_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn command_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CommandEvent = "webapi_CommandEvent" "new"

///|
#cfg(target="wasm-gc")
fn command_event_source_ffi(obj : JsValue) -> Element = "webapi_CommandEvent" "get_source"

///|
#cfg(target="wasm-gc")
fn command_event_command_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CommandEvent" "get_command"

///|
#cfg(target="wasm-gc")
fn command_event_command_ffi(obj : JsValue) -> String {
  jsvalue_to_string(command_event_command_ffi_wasm(obj))
}
