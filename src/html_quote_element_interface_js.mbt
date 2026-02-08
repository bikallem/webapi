extern "js" fn html_quote_element_new_ffi() -> HTMLQuoteElement = "() => new HTMLQuoteElement()"

extern "js" fn html_quote_element_cite_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cite"

extern "js" fn html_quote_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "(obj, cite) => { obj.cite = cite; }"