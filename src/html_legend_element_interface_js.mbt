extern "js" fn html_legend_element_new_ffi() -> HTMLLegendElement = "() => new HTMLLegendElement()"

extern "js" fn html_legend_element_form_ffi(obj: JsValue) -> JsValue = "(obj) => obj.form"

extern "js" fn html_legend_element_align_ffi(obj: JsValue) -> JsValue = "(obj) => obj.align"

extern "js" fn html_legend_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"