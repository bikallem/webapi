///|
pub fn NodeFilter::new(f : (Node) -> UInt) -> NodeFilter {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) {
    TJsValue::to_js(f(a0.unsafe_cast()))
  }
  node_filter_ffi(w).unsafe_cast()
}

///|
fn node_filter_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_NodeFilter" "new"
