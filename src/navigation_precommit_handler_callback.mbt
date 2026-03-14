// Do not edit. This file is generated.
// MoonBit type: NavigationPrecommitHandler
// Specifications: html.idl

/// [NavigationPrecommitHandler](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPrecommitHandler)
#external
pub type NavigationPrecommitHandler

pub impl TJsValue for NavigationPrecommitHandler with to_js(self: NavigationPrecommitHandler) -> JsValue = "%identity"

pub impl FromJsAny for NavigationPrecommitHandler with from_js_any(value : JsAny) -> NavigationPrecommitHandler = "%identity"

pub fn NavigationPrecommitHandler::new(callback : (NavigationPrecommitController) -> JsPromise[JsValue]) -> NavigationPrecommitHandler { navigation_precommit_handler_ffi(callback) }

#cfg(target="js")
extern "js" fn navigation_precommit_handler_ffi(callback : (NavigationPrecommitController) -> JsPromise[JsValue]) -> NavigationPrecommitHandler = "(callback) => callback"

#cfg(target="wasm-gc")
fn navigation_precommit_handler_ffi(callback : (NavigationPrecommitController) -> JsPromise[JsValue]) -> NavigationPrecommitHandler = "webapi_NavigationPrecommitHandler" "new"