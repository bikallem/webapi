///|
#external
pub type CommandEventInit

///|
pub impl TJsValue for CommandEventInit with to_js(self : CommandEventInit) -> JsValue = "%identity"

///|
extern "js" fn command_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  source : JsValue,
  command : JsValue,
) -> CommandEventInit =
  #|(bubbles, cancelable, composed, source, command) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (source !== undefined) obj.source = source;
  #|  if (command !== undefined) obj.command = command;
  #|  return obj;
  #|}

///|
pub fn CommandEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  source? : &TElement = JsValue::null(),
  command? : String = "",
) -> CommandEventInit {
  command_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(source),
    TJsValue::to_js(command),
  )
}

///|
extern "js" fn command_event_init_empty_ffi() -> CommandEventInit = "() => {}"

///|
pub fn CommandEventInit::empty() -> CommandEventInit {
  command_event_init_empty_ffi()
}
