///|
pub fn XPathNSResolver::new(f : (String) -> String) -> XPathNSResolver {
  x_path_ns_resolver_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn x_path_ns_resolver_ffi(f : JsValue) -> JsValue = "(f) => f"
