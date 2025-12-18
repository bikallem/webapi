// Auto-generated MoonBit bindings for NavigationResult dictionary
// Do not edit manually

#external
pub type NavigationResult

pub impl TJsValue for NavigationResult with to_js(self: NavigationResult) -> JsValue = "%identity"


fn navigation_result_ffi(committed : JsValue, finished : JsValue) -> NavigationResult = "webapi_NavigationResult" "new"


pub fn NavigationResult::new(
  committed? : JsPromise[NavigationHistoryEntry],
  finished? : JsPromise[NavigationHistoryEntry]) -> NavigationResult {
    navigation_result_ffi(
      opt_to_js(committed)
     ,opt_to_js(finished)
    )
}


pub fn NavigationResult::empty() -> NavigationResult = "webapi_Dictionary" "empty"