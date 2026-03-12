// Do not edit. This file is generated.
// MoonBit type: URLPatternComponentResult
// Specifications: urlpattern.idl

/// [URLPatternComponentResult](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternComponentResult)
#external
pub type URLPatternComponentResult

pub impl TJsValue for URLPatternComponentResult with to_js(self: URLPatternComponentResult) -> JsValue = "%identity"

pub impl FromJsAny for URLPatternComponentResult with from_js_any(value : JsAny) -> URLPatternComponentResult = "%identity"

pub fn URLPatternComponentResult::new(input? : String, 
groups? : JsValue) -> URLPatternComponentResult {
  url_pattern_component_result_ffi(opt_to_js(input), opt_to_js(groups))
}

pub fn URLPatternComponentResult::empty() -> URLPatternComponentResult { url_pattern_component_result_empty_ffi() }

pub fn URLPatternComponentResult::input(self : URLPatternComponentResult) -> String? {
  url_pattern_component_result_get_input_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn URLPatternComponentResult::groups(self : URLPatternComponentResult) -> JsValue? {
  url_pattern_component_result_get_groups_ffi(TJsValue::to_js(self)).to_option()
}