extern "js" fn html_script_element_new_ffi() -> HTMLScriptElement = "() => new HTMLScriptElement()"

extern "js" fn html_script_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn html_script_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn html_script_element_src_ffi(obj: JsValue) -> JsValue = "(obj) => obj.src"

extern "js" fn html_script_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_script_element_no_module_ffi(obj: JsValue) -> JsValue = "(obj) => obj.noModule"

extern "js" fn html_script_element_set_no_module_ffi(obj: JsValue, no_module: JsValue) -> Unit = "(obj, noModule) => { obj.noModule = noModule; }"

extern "js" fn html_script_element_async_ffi(obj: JsValue) -> JsValue = "(obj) => obj.async"

extern "js" fn html_script_element_set_async_ffi(obj: JsValue, async_: JsValue) -> Unit = "(obj, async) => { obj.async = async; }"

extern "js" fn html_script_element_defer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.defer"

extern "js" fn html_script_element_set_defer_ffi(obj: JsValue, defer_: JsValue) -> Unit = "(obj, defer) => { obj.defer = defer; }"

extern "js" fn html_script_element_blocking_ffi(obj: JsValue) -> JsValue = "(obj) => obj.blocking"

extern "js" fn html_script_element_cross_origin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

extern "js" fn html_script_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

extern "js" fn html_script_element_referrer_policy_ffi(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

extern "js" fn html_script_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

extern "js" fn html_script_element_integrity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

extern "js" fn html_script_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

extern "js" fn html_script_element_fetch_priority_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fetchPriority"

extern "js" fn html_script_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

extern "js" fn html_script_element_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.text"

extern "js" fn html_script_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "(obj, text) => { obj.text = text; }"

extern "js" fn html_script_element_supports_ffi(type_: JsValue) -> JsValue = "(type_) => HTMLScriptElement.supports(type_)"

extern "js" fn html_script_element_charset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.charset"

extern "js" fn html_script_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "(obj, charset) => { obj.charset = charset; }"

extern "js" fn html_script_element_event_ffi(obj: JsValue) -> JsValue = "(obj) => obj.event"

extern "js" fn html_script_element_set_event_ffi(obj: JsValue, event: JsValue) -> Unit = "(obj, event) => { obj.event = event; }"

extern "js" fn html_script_element_html_for_ffi(obj: JsValue) -> JsValue = "(obj) => obj.htmlFor"

extern "js" fn html_script_element_set_html_for_ffi(obj: JsValue, html_for: JsValue) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"