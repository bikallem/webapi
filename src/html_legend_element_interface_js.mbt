///|
extern "js" fn html_legend_element_new_ffi() -> HTMLLegendElement = "() => new HTMLLegendElement()"

///|
extern "js" fn html_legend_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_legend_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_legend_element_form_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_legend_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_legend_element_align_ffi(obj : JsValue) -> String {
  html_legend_element_align_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_legend_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"
