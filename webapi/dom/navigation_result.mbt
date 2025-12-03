// Auto-generated MoonBit bindings for NavigationResult dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationResult {
//   Promise<NavigationHistoryEntry> committed;
//   Promise<NavigationHistoryEntry> finished;
// };

///|
#external
pub type NavigationResult

///|
pub impl TJsValue for NavigationResult with to_js(self : NavigationResult) -> JsValue = "%identity"

///|
fn navigation_result_ffi(
  committed : JsValue,
  finished : JsValue,
) -> NavigationResult = "webapi_NavigationResult" "new"

///|
pub fn NavigationResult::new(
  committed? : JsPromise[JsValue],
  finished? : JsPromise[JsValue],
) -> NavigationResult {
  let committed_js = opt_to_js(committed)
  let finished_js = opt_to_js(finished)
  navigation_result_ffi(committed_js, finished_js)
}

///|
pub fn NavigationResult::empty() -> NavigationResult = "webapi_Dictionary" "empty"
