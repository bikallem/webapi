///|
extern "js" fn create_html_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateHTMLCallback = "(callback) => callback"
