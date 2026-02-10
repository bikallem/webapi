// Do not edit. This file is generated.
// MoonBit type: NavigationResult
// Specifications: html.idl

///|
/// [NavigationResult](https://developer.mozilla.org/en-US/docs/Web/API/NavigationResult)
#external
pub type NavigationResult

///|
pub impl TJsValue for NavigationResult with to_js(self : NavigationResult) -> JsValue = "%identity"

///|
pub fn NavigationResult::new(
  committed? : @js_async.Promise[NavigationHistoryEntry],
  finished? : @js_async.Promise[NavigationHistoryEntry],
) -> NavigationResult {
  navigation_result_ffi(opt_to_js(committed), opt_to_js(finished))
}

///|
pub fn NavigationResult::empty() -> NavigationResult {
  navigation_result_empty_ffi()
}
