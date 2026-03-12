extern "js" fn html_slot_element_new_ffi() -> HTMLSlotElement = "() => new HTMLSlotElement()"

extern "js" fn html_slot_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_slot_element_name_ffi(obj: JsValue) -> String {
  html_slot_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_slot_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_slot_element_assigned_nodes_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.assignedNodes(options)"

///|
fn html_slot_element_assigned_nodes_ffi(obj: JsValue, options: JsValue) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn html_slot_element_assigned_elements_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.assignedElements(options)"

///|
fn html_slot_element_assigned_elements_ffi(obj: JsValue, options: JsValue) -> Array[Element] {
  html_slot_element_assigned_elements_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn html_slot_element_assign_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.assign(...nodes)"