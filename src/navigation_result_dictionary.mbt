// Do not edit. This file is generated.
// MoonBit type: NavigationResult
// Specifications: html.idl

///|
#external
pub type NavigationResult

///|
pub impl TJsValue for NavigationResult with to_js(self : NavigationResult) -> JsValue = "%identity"

///|
extern "js" fn navigation_result_ffi(
  committed : JsValue,
  finished : JsValue,
) -> NavigationResult =
  #|(committed, finished) => {
  #|  const obj = {};
  #|  if (committed !== undefined) obj.committed = committed;
  #|  if (finished !== undefined) obj.finished = finished;
  #|  return obj;
  #|}

///|
pub fn NavigationResult::new(
  committed? : JsPromise[NavigationHistoryEntry],
  finished? : JsPromise[NavigationHistoryEntry],
) -> NavigationResult {
  navigation_result_ffi(opt_to_js(committed), opt_to_js(finished))
}

///|
extern "js" fn navigation_result_empty_ffi() -> NavigationResult = "() => {}"

///|
pub fn NavigationResult::empty() -> NavigationResult {
  navigation_result_empty_ffi()
}
