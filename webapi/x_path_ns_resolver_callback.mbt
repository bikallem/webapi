// Do not edit. This file is generated.
// MoonBit type: XPathNSResolver
// Specifications: dom.idl

/// [XPathNSResolver](https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver)
#external
pub type XPathNSResolver

pub impl TJsValue for XPathNSResolver with to_js(self: XPathNSResolver) -> JsValue = "%identity"

pub impl FromJsAny for XPathNSResolver with from_js_any(value : JsAny) -> XPathNSResolver = "%identity"

pub fn XPathNSResolver::new(callback : (String) -> String) -> XPathNSResolver { x_path_ns_resolver_ffi(callback) }