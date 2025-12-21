///|
#external
pub type NodeFilter

///|
pub impl TJsValue for NodeFilter with to_js(self : NodeFilter) -> JsValue = "%identity"

///|
extern "js" fn node_filter_ffi(f : (Node) -> UInt) -> NodeFilter = "(f) => f"

///|
pub fn NodeFilter::new(f : (Node) -> UInt) -> NodeFilter {
  node_filter_ffi(f)
}
