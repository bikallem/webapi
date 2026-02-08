// Do not edit. This file is generated.
// MoonBit type: NavigationInterceptHandler
// Specifications: html.idl

/// [NavigationInterceptHandler](https://developer.mozilla.org/en-US/docs/Web/API/NavigationInterceptHandler)
#external
pub type NavigationInterceptHandler

pub impl TJsValue for NavigationInterceptHandler with to_js(self: NavigationInterceptHandler) -> JsValue = "%identity"

pub fn NavigationInterceptHandler::new(f : () -> JsPromise[Unit]) -> NavigationInterceptHandler { navigation_intercept_handler_ffi(js_of(f)).unsafe_cast() }