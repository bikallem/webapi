///|
pub fn NodeFilter::new(f : (Node) -> UInt) -> NodeFilter {
  node_filter_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn node_filter_ffi(f : JsValue) -> JsValue = "(f) => f"
