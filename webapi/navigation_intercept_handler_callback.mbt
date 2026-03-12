// Do not edit. This file is generated.
// MoonBit type: NavigationInterceptHandler
// Specifications: html.idl

/// [NavigationInterceptHandler](https://developer.mozilla.org/en-US/docs/Web/API/NavigationInterceptHandler)
#external
pub type NavigationInterceptHandler

pub impl TJsValue for NavigationInterceptHandler with to_js(self: NavigationInterceptHandler) -> JsValue = "%identity"

pub impl FromJsAny for NavigationInterceptHandler with from_js_any(value : JsAny) -> NavigationInterceptHandler = "%identity"

pub fn NavigationInterceptHandler::new(callback : () -> JsPromise[JsValue]) -> NavigationInterceptHandler { navigation_intercept_handler_ffi(callback) }