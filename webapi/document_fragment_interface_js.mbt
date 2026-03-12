extern "js" fn document_fragment_new_ffi() -> DocumentFragment = "() => new DocumentFragment()"

extern "js" fn document_fragment_get_element_by_id_ffi(obj: JsValue, element_id: JsValue) -> JsValue = "(obj, element_id) => obj.getElementById(element_id)"

extern "js" fn document_fragment_children_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.children"

///|
fn document_fragment_children_ffi(obj: JsValue) -> HTMLCollection {
  document_fragment_children_ffi_js(obj).unsafe_cast()
}

extern "js" fn document_fragment_first_element_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.firstElementChild"

///|
fn document_fragment_first_element_child_ffi(obj: JsValue) -> Element {
  document_fragment_first_element_child_ffi_js(obj).unsafe_cast()
}

extern "js" fn document_fragment_last_element_child_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastElementChild"

///|
fn document_fragment_last_element_child_ffi(obj: JsValue) -> Element {
  document_fragment_last_element_child_ffi_js(obj).unsafe_cast()
}

extern "js" fn document_fragment_child_element_count_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.childElementCount"

///|
fn document_fragment_child_element_count_ffi(obj: JsValue) -> UInt {
  document_fragment_child_element_count_ffi_js(obj).unsafe_cast()
}

extern "js" fn document_fragment_prepend_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.prepend(...nodes)"

extern "js" fn document_fragment_append_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.append(...nodes)"

extern "js" fn document_fragment_replace_children_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceChildren(...nodes)"

extern "js" fn document_fragment_move_before_ffi(obj: JsValue, node: JsValue, child: JsValue) -> Unit = "(obj, node, child) => obj.moveBefore(node, child)"

extern "js" fn document_fragment_query_selector_ffi(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelector(selectors)"

extern "js" fn document_fragment_query_selector_all_ffi_js(obj: JsValue, selectors: JsValue) -> JsValue = "(obj, selectors) => obj.querySelectorAll(selectors)"

///|
fn document_fragment_query_selector_all_ffi(obj: JsValue, selectors: JsValue) -> NodeList {
  document_fragment_query_selector_all_ffi_js(obj, selectors).unsafe_cast()
}