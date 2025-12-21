///|
#external
pub type XPathNSResolver

///|
pub impl TJsValue for XPathNSResolver with to_js(self : XPathNSResolver) -> JsValue = "%identity"

///|
extern "js" fn x_path_ns_resolver_ffi(
  f : (String?) -> JsValue,
) -> XPathNSResolver = "(f) => f"

///|
pub fn XPathNSResolver::new(f : (String?) -> JsValue) -> XPathNSResolver {
  x_path_ns_resolver_ffi(f)
}
