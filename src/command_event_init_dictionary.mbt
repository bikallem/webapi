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

#cfg(target="js")
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

#cfg(target="js")
extern "js" fn command_event_init_empty_ffi() -> CommandEventInit = "() => {}"

#cfg(target="js")
extern "js" fn command_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn command_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn command_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn command_event_init_get_source_ffi(obj: JsValue) -> JsValue = "(obj) => obj.source"

#cfg(target="js")
extern "js" fn command_event_init_get_command_ffi(obj: JsValue) -> JsValue = "(obj) => obj.command"

#cfg(target="wasm-gc")
fn command_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, source: JsValue, command: JsValue) -> CommandEventInit = "webapi_CommandEventInit" "new"

#cfg(target="wasm-gc")
fn command_event_init_empty_ffi() -> CommandEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn command_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_CommandEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn command_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_CommandEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn command_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_CommandEventInit" "get_composed"

#cfg(target="wasm-gc")
fn command_event_init_get_source_ffi(obj: JsValue) -> JsValue = "webapi_CommandEventInit" "get_source"

#cfg(target="wasm-gc")
fn command_event_init_get_command_ffi(obj: JsValue) -> JsValue = "webapi_CommandEventInit" "get_command"