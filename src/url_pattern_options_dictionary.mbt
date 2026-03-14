// Do not edit. This file is generated.
// MoonBit type: URLPatternOptions
// Specifications: urlpattern.idl

/// [URLPatternOptions](https://developer.mozilla.org/en-US/docs/Web/API/URLPatternOptions)
#external
pub type URLPatternOptions

pub impl TJsValue for URLPatternOptions with to_js(self: URLPatternOptions) -> JsValue = "%identity"

pub impl FromJsAny for URLPatternOptions with from_js_any(value : JsAny) -> URLPatternOptions = "%identity"

pub fn URLPatternOptions::new(ignore_case? : Bool) -> URLPatternOptions {
  url_pattern_options_ffi(opt_to_js(ignore_case))
}

pub fn URLPatternOptions::empty() -> URLPatternOptions { url_pattern_options_empty_ffi() }

pub fn URLPatternOptions::ignore_case(self : URLPatternOptions) -> Bool? {
  url_pattern_options_get_ignore_case_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn url_pattern_options_ffi(ignore_case: JsValue) -> URLPatternOptions = 
#|(ignoreCase) => {
#|  const obj = {};
#|  if (ignoreCase !== undefined) obj.ignoreCase = ignoreCase;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn url_pattern_options_empty_ffi() -> URLPatternOptions = "() => {}"

#cfg(target="js")
extern "js" fn url_pattern_options_get_ignore_case_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ignoreCase"

#cfg(target="wasm-gc")
fn url_pattern_options_ffi(ignore_case: JsValue) -> URLPatternOptions = "webapi_URLPatternOptions" "new"

#cfg(target="wasm-gc")
fn url_pattern_options_empty_ffi() -> URLPatternOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn url_pattern_options_get_ignore_case_ffi(obj: JsValue) -> JsValue = "webapi_URLPatternOptions" "get_ignoreCase"