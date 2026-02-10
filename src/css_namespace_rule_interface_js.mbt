///|
extern "js" fn css_namespace_rule_namespace_uri_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.namespaceURI"

///|
fn css_namespace_rule_namespace_uri_ffi(obj : JsValue) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn css_namespace_rule_prefix_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.prefix"

///|
fn css_namespace_rule_prefix_ffi(obj : JsValue) -> CSSOMString {
  css_namespace_rule_prefix_ffi_js(obj).unsafe_cast()
}
