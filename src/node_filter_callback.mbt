///|
#external
pub type NodeFilter

///|
pub impl TJsValue for NodeFilter with to_js(self : NodeFilter) -> JsValue = "%identity"

///|
extern "js" fn node_filter_ffi(f : (&TNode) -> UInt) -> NodeFilter = "(f) => f"

///|
pub fn NodeFilter::new(f : (&TNode) -> UInt) -> NodeFilter {
  node_filter_ffi(f)
}
