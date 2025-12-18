// Auto-generated MoonBit bindings for NodeFilter callback

// Do not edit manually

///|
#external
pub type NodeFilter

///|
pub impl TJsValue for NodeFilter with to_js(self : NodeFilter) -> JsValue = "%identity"

///|
pub fn NodeFilter::new(f : (&TNode) -> UInt) -> NodeFilter = "webapi_NodeFilter" "new"
