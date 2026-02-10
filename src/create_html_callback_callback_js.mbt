///|
pub fn CreateHTMLCallback::new(
  f : (String, JsValue) -> String,
) -> CreateHTMLCallback {
  create_html_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn create_html_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
