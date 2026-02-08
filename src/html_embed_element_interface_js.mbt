extern "js" fn html_embed_element_new_ffi() -> HTMLEmbedElement = "() => new HTMLEmbedElement()"

extern "js" fn html_embed_element_src_ffi(obj: JsValue) -> JsValue = "(obj) => obj.src"

extern "js" fn html_embed_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_embed_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn html_embed_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn html_embed_element_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn html_embed_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_embed_element_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"

extern "js" fn html_embed_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

extern "js" fn html_embed_element_get_svg_document_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getSVGDocument()"

extern "js" fn html_embed_element_align_ffi(obj: JsValue) -> JsValue = "(obj) => obj.align"

extern "js" fn html_embed_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_embed_element_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn html_embed_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"