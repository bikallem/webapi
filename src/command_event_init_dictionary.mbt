// Do not edit. This file is generated.
// MoonBit type: CommandEventInit
// Specifications: dom.idl, html.idl

///|
/// [CommandEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CommandEventInit)
#external
pub type CommandEventInit

///|
pub impl TJsValue for CommandEventInit with to_js(self : CommandEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CommandEventInit with from_js_any(value : JsAny) -> CommandEventInit = "%identity"

///|
pub fn CommandEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  source? : &TElement,
  command? : String = "",
) -> CommandEventInit {
  command_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(source),
    TJsValue::to_js(command),
  )
}

///|
pub fn CommandEventInit::empty() -> CommandEventInit {
  command_event_init_empty_ffi()
}
