fn html_quote_element_new_ffi() -> HTMLQuoteElement = "webapi_HTMLQuoteElement" "new"

fn html_quote_element_cite_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLQuoteElement" "get_cite"

///|
fn html_quote_element_cite_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_quote_element_cite_ffi_wasm(obj))
}

fn html_quote_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "webapi_HTMLQuoteElement" "set_cite"