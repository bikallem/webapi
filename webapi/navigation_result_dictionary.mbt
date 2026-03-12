// Do not edit. This file is generated.
// MoonBit type: NavigationResult
// Specifications: html.idl

/// [NavigationResult](https://developer.mozilla.org/en-US/docs/Web/API/NavigationResult)
#external
pub type NavigationResult

pub impl TJsValue for NavigationResult with to_js(self: NavigationResult) -> JsValue = "%identity"

pub impl FromJsAny for NavigationResult with from_js_any(value : JsAny) -> NavigationResult = "%identity"

pub fn NavigationResult::new(committed? : JsPromise[NavigationHistoryEntry], 
finished? : JsPromise[NavigationHistoryEntry]) -> NavigationResult {
  navigation_result_ffi(opt_to_js(committed), opt_to_js(finished))
}

pub fn NavigationResult::empty() -> NavigationResult { navigation_result_empty_ffi() }

pub fn NavigationResult::committed(self : NavigationResult) -> JsPromise[NavigationHistoryEntry]? {
  navigation_result_get_committed_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NavigationResult::finished(self : NavigationResult) -> JsPromise[NavigationHistoryEntry]? {
  navigation_result_get_finished_ffi(TJsValue::to_js(self)).to_option()
}