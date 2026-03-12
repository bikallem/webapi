// Do not edit. This file is generated.
// MoonBit type: CommandEventInit
// Specifications: dom.idl, html.idl

/// [CommandEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CommandEventInit)
#external
pub type CommandEventInit

pub impl TJsValue for CommandEventInit with to_js(self: CommandEventInit) -> JsValue = "%identity"

pub impl FromJsAny for CommandEventInit with from_js_any(value : JsAny) -> CommandEventInit = "%identity"

pub fn CommandEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
source? : &TElement, 
command? : String) -> CommandEventInit {
  command_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(source), opt_to_js(command))
}

pub fn CommandEventInit::empty() -> CommandEventInit { command_event_init_empty_ffi() }

pub fn CommandEventInit::bubbles(self : CommandEventInit) -> Bool? {
  command_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CommandEventInit::cancelable(self : CommandEventInit) -> Bool? {
  command_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CommandEventInit::composed(self : CommandEventInit) -> Bool? {
  command_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CommandEventInit::source(self : CommandEventInit) -> Element? {
  command_event_init_get_source_ffi(TJsValue::to_js(self)).to_option()
}

pub fn CommandEventInit::command(self : CommandEventInit) -> String? {
  command_event_init_get_command_ffi(TJsValue::to_js(self)).to_option_prim()
}