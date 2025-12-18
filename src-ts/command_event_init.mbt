// Auto-generated MoonBit bindings for CommandEventInit dictionary

// Do not edit manually

///|
#external
pub type CommandEventInit

///|
pub impl TJsValue for CommandEventInit with to_js(self : CommandEventInit) -> JsValue = "%identity"

///|
fn command_event_init_ffi(source : JsValue, command : JsValue) -> CommandEventInit = "webapi_CommandEventInit" "new"

///|
pub fn CommandEventInit::new(
  source? : Element = JsValue::null(),
  command? : String = ""
) -> CommandEventInit {
  command_event_init_ffi(TJsValue::to_js(source), TJsValue::to_js(command))
}

///|
pub fn CommandEventInit::empty() -> CommandEventInit = "webapi_Dictionary" "empty"