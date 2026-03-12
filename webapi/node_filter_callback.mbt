// Do not edit. This file is generated.
// MoonBit type: NodeFilter
// Specifications: dom.idl

/// [NodeFilter](https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter)
#external
pub type NodeFilter

pub impl TJsValue for NodeFilter with to_js(self: NodeFilter) -> JsValue = "%identity"

pub impl FromJsAny for NodeFilter with from_js_any(value : JsAny) -> NodeFilter = "%identity"

pub fn NodeFilter::new(callback : (Node) -> UInt) -> NodeFilter { node_filter_ffi(callback) }