///|
fn x_path_ns_resolver_ffi_wasm(
  callback : (JsValue) -> String,
) -> XPathNSResolver = "webapi_XPathNSResolver" "new"

///|
fn x_path_ns_resolver_ffi(callback : (String) -> String) -> XPathNSResolver {
  x_path_ns_resolver_ffi_wasm(fn(a0) { callback(jsvalue_to_string(a0)) })
}
