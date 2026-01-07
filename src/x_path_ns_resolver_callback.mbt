// Do not edit. This file is generated.
// MoonBit type: XPathNSResolver
// Specifications: dom.idl

///|
/// [XPathNSResolver](https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver)
#external
pub type XPathNSResolver

///|
pub impl TJsValue for XPathNSResolver with to_js(self : XPathNSResolver) -> JsValue = "%identity"

///|
extern "js" fn x_path_ns_resolver_ffi(
  f : (String) -> String,
) -> XPathNSResolver = "(f) => f"

///|
pub fn XPathNSResolver::new(f : (String) -> String) -> XPathNSResolver {
  x_path_ns_resolver_ffi(f)
}
