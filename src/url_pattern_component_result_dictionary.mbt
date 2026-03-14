// Do not edit. This file is generated.
// MoonBit type: URLPatternComponentResult
// Specifications: urlpattern.idl

///|
/// [URLPatternComponentResult](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternComponentResult)
#external
pub type URLPatternComponentResult

///|
pub impl TJsValue for URLPatternComponentResult with to_js(
  self : URLPatternComponentResult,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for URLPatternComponentResult with from_js_any(value : JsAny) -> URLPatternComponentResult = "%identity"

///|
pub fn URLPatternComponentResult::new(
  input? : String,
  groups? : JsValue,
) -> URLPatternComponentResult {
  url_pattern_component_result_ffi(opt_to_js(input), opt_to_js(groups))
}

///|
pub fn URLPatternComponentResult::empty() -> URLPatternComponentResult {
  url_pattern_component_result_empty_ffi()
}

///|
pub fn URLPatternComponentResult::input(
  self : URLPatternComponentResult,
) -> String? {
  url_pattern_component_result_get_input_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn URLPatternComponentResult::groups(
  self : URLPatternComponentResult,
) -> JsValue? {
  url_pattern_component_result_get_groups_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn url_pattern_component_result_ffi(
  input : JsValue,
  groups : JsValue,
) -> URLPatternComponentResult =
  #|(input, groups) => {
  #|  const obj = {};
  #|  if (input !== undefined) obj.input = input;
  #|  if (groups !== undefined) obj.groups = groups;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn url_pattern_component_result_empty_ffi() -> URLPatternComponentResult = "() => {}"

///|
#cfg(target="js")
extern "js" fn url_pattern_component_result_get_input_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.input"

///|
#cfg(target="js")
extern "js" fn url_pattern_component_result_get_groups_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.groups"

///|
#cfg(target="wasm-gc")
fn url_pattern_component_result_ffi(
  input : JsValue,
  groups : JsValue,
) -> URLPatternComponentResult = "webapi_URLPatternComponentResult" "new"

///|
#cfg(target="wasm-gc")
fn url_pattern_component_result_empty_ffi() -> URLPatternComponentResult = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn url_pattern_component_result_get_input_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternComponentResult" "get_input"

///|
#cfg(target="wasm-gc")
fn url_pattern_component_result_get_groups_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternComponentResult" "get_groups"
