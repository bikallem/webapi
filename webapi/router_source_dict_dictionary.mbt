// Do not edit. This file is generated.
// MoonBit type: RouterSourceDict
// Specifications: service-workers.idl

///|
/// [RouterSourceDict](https://developer.mozilla.org/en-US/docs/Web/API/RouterSourceDict)
#external
pub type RouterSourceDict

///|
pub impl TJsValue for RouterSourceDict with to_js(self : RouterSourceDict) -> JsValue = "%identity"

///|
pub impl FromJsAny for RouterSourceDict with from_js_any(value : JsAny) -> RouterSourceDict = "%identity"

///|
pub fn RouterSourceDict::new(cache_name? : String) -> RouterSourceDict {
  router_source_dict_ffi(opt_to_js(cache_name))
}

///|
pub fn RouterSourceDict::empty() -> RouterSourceDict {
  router_source_dict_empty_ffi()
}

///|
pub fn RouterSourceDict::cache_name(self : RouterSourceDict) -> String? {
  router_source_dict_get_cache_name_ffi(TJsValue::to_js(self)).to_option_prim()
}
