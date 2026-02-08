extern "js" fn html_base_element_new_ffi() -> HTMLBaseElement = "() => new HTMLBaseElement()"

extern "js" fn html_base_element_href_ffi(obj: JsValue) -> JsValue = "(obj) => obj.href"

extern "js" fn html_base_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

extern "js" fn html_base_element_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.target"

extern "js" fn html_base_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"