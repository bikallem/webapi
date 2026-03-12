fn css_namespace_rule_namespace_uri_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSNamespaceRule" "get_namespaceURI"

///|
fn css_namespace_rule_namespace_uri_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi_wasm(obj).unsafe_cast()
}

fn css_namespace_rule_prefix_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSNamespaceRule" "get_prefix"

///|
fn css_namespace_rule_prefix_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_prefix_ffi_wasm(obj).unsafe_cast()
}