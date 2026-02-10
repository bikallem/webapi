///|
fn html_legend_element_new_ffi() -> HTMLLegendElement = "webapi_HTMLLegendElement" "new"

///|
fn html_legend_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLLegendElement" "get_form"

///|
fn html_legend_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLLegendElement" "get_align"

///|
fn html_legend_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_legend_element_align_ffi_wasm(obj))
}

///|
fn html_legend_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLLegendElement" "set_align"
