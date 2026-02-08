extern "js" fn html_meta_element_new_ffi() -> HTMLMetaElement = "() => new HTMLMetaElement()"

extern "js" fn html_meta_element_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn html_meta_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_meta_element_http_equiv_ffi(obj: JsValue) -> JsValue = "(obj) => obj.httpEquiv"

extern "js" fn html_meta_element_set_http_equiv_ffi(obj: JsValue, http_equiv: JsValue) -> Unit = "(obj, httpEquiv) => { obj.httpEquiv = httpEquiv; }"

extern "js" fn html_meta_element_content_ffi(obj: JsValue) -> JsValue = "(obj) => obj.content"

extern "js" fn html_meta_element_set_content_ffi(obj: JsValue, content: JsValue) -> Unit = "(obj, content) => { obj.content = content; }"

extern "js" fn html_meta_element_media_ffi(obj: JsValue) -> JsValue = "(obj) => obj.media"

extern "js" fn html_meta_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "(obj, media) => { obj.media = media; }"

extern "js" fn html_meta_element_scheme_ffi(obj: JsValue) -> JsValue = "(obj) => obj.scheme"

extern "js" fn html_meta_element_set_scheme_ffi(obj: JsValue, scheme: JsValue) -> Unit = "(obj, scheme) => { obj.scheme = scheme; }"