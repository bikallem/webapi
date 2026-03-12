fn html_slot_element_new_ffi() -> HTMLSlotElement = "webapi_HTMLSlotElement" "new"

fn html_slot_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSlotElement" "get_name"

///|
fn html_slot_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_slot_element_name_ffi_wasm(obj))
}

fn html_slot_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLSlotElement" "set_name"

fn html_slot_element_assigned_nodes_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_HTMLSlotElement" "assignedNodes"

///|
fn html_slot_element_assigned_nodes_ffi(obj: JsValue, options: JsValue) -> Array[Node] {
  html_slot_element_assigned_nodes_ffi_wasm(obj, options).to_array()
}

fn html_slot_element_assigned_elements_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_HTMLSlotElement" "assignedElements"

///|
fn html_slot_element_assigned_elements_ffi(obj: JsValue, options: JsValue) -> Array[Element] {
  html_slot_element_assigned_elements_ffi_wasm(obj, options).to_array()
}

fn html_slot_element_assign_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_HTMLSlotElement" "assign"