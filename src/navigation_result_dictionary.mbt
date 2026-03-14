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

#cfg(target="js")
extern "js" fn navigation_result_ffi(committed: JsValue, finished: JsValue) -> NavigationResult = 
#|(committed, finished) => {
#|  const obj = {};
#|  if (committed !== undefined) obj.committed = committed;
#|  if (finished !== undefined) obj.finished = finished;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn navigation_result_empty_ffi() -> NavigationResult = "() => {}"

#cfg(target="js")
extern "js" fn navigation_result_get_committed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.committed"

#cfg(target="js")
extern "js" fn navigation_result_get_finished_ffi(obj: JsValue) -> JsValue = "(obj) => obj.finished"

#cfg(target="wasm-gc")
fn navigation_result_ffi(committed: JsValue, finished: JsValue) -> NavigationResult = "webapi_NavigationResult" "new"

#cfg(target="wasm-gc")
fn navigation_result_empty_ffi() -> NavigationResult = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn navigation_result_get_committed_ffi(obj: JsValue) -> JsValue = "webapi_NavigationResult" "get_committed"

#cfg(target="wasm-gc")
fn navigation_result_get_finished_ffi(obj: JsValue) -> JsValue = "webapi_NavigationResult" "get_finished"