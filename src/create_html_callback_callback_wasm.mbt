///|
pub fn CreateHTMLCallback::new(
  f : (String, JsValue) -> String,
) -> CreateHTMLCallback {
  let w : (JsValue, JsValue) -> JsValue = fn(a0 : JsValue, a1 : JsValue) {
    TJsValue::to_js(f(a0.unsafe_cast(), a1.unsafe_cast()))
  }
  create_html_callback_ffi(w).unsafe_cast()
}

///|
fn create_html_callback_ffi(f : (JsValue, JsValue) -> JsValue) -> JsValue = "webapi_CreateHTMLCallback" "new"
