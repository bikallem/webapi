// Auto-generated MoonBit bindings for CommandEventInit dictionary
// Do not edit manually

#external
pub type CommandEventInit

pub impl TJsValue for CommandEventInit with to_js(self: CommandEventInit) -> JsValue = "%identity"


fn command_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, source : JsValue, command : JsValue) -> CommandEventInit = "webapi_CommandEventInit" "new"


pub fn CommandEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  source? : &TElement? : &TElement = &TElement::null(),
  command? : String? : String = "") -> CommandEventInit {
    command_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(source)
     ,TJsValue::to_js(command)
    )
}


pub fn CommandEventInit::empty() -> CommandEventInit = "webapi_Dictionary" "empty"