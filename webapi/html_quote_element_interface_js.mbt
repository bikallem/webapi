extern "js" fn html_quote_element_new_ffi() -> HTMLQuoteElement = "() => new HTMLQuoteElement()"

extern "js" fn html_quote_element_cite_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cite"

///|
fn html_quote_element_cite_ffi(obj: JsValue) -> String {
  html_quote_element_cite_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_quote_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "(obj, cite) => { obj.cite = cite; }"