// Do not edit. This file is generated.
// MoonBit type: EventSourceInit
// Specifications: html.idl

/// [EventSourceInit](https://developer.mozilla.org/en-US/docs/Web/API/EventSourceInit)
#external
pub type EventSourceInit

pub impl TJsValue for EventSourceInit with to_js(self: EventSourceInit) -> JsValue = "%identity"

pub impl FromJsAny for EventSourceInit with from_js_any(value : JsAny) -> EventSourceInit = "%identity"

pub fn EventSourceInit::new(with_credentials? : Bool) -> EventSourceInit {
  event_source_init_ffi(opt_to_js(with_credentials))
}

pub fn EventSourceInit::empty() -> EventSourceInit { event_source_init_empty_ffi() }

pub fn EventSourceInit::with_credentials(self : EventSourceInit) -> Bool? {
  event_source_init_get_with_credentials_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn event_source_init_ffi(with_credentials: JsValue) -> EventSourceInit = 
#|(withCredentials) => {
#|  const obj = {};
#|  if (withCredentials !== undefined) obj.withCredentials = withCredentials;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn event_source_init_empty_ffi() -> EventSourceInit = "() => {}"

#cfg(target="js")
extern "js" fn event_source_init_get_with_credentials_ffi(obj: JsValue) -> JsValue = "(obj) => obj.withCredentials"

#cfg(target="wasm-gc")
fn event_source_init_ffi(with_credentials: JsValue) -> EventSourceInit = "webapi_EventSourceInit" "new"

#cfg(target="wasm-gc")
fn event_source_init_empty_ffi() -> EventSourceInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn event_source_init_get_with_credentials_ffi(obj: JsValue) -> JsValue = "webapi_EventSourceInit" "get_withCredentials"