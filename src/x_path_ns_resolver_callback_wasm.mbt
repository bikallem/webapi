///|
pub fn XPathNSResolver::new(f : (String) -> String) -> XPathNSResolver {
  let w : (JsValue) -> JsValue = fn(a0 : JsValue) {
    TJsValue::to_js(f(a0.unsafe_cast()))
  }
  x_path_ns_resolver_ffi(w).unsafe_cast()
}

///|
fn x_path_ns_resolver_ffi(f : (JsValue) -> JsValue) -> JsValue = "webapi_XPathNSResolver" "new"
