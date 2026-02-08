///|
extern "js" fn html_slot_element_new_ffi() -> HTMLSlotElement = "() => new HTMLSlotElement()"

///|
extern "js" fn html_slot_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_slot_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_slot_element_assigned_nodes_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.assignedNodes(options)"

///|
extern "js" fn html_slot_element_assigned_elements_ffi(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.assignedElements(options)"

///|
extern "js" fn html_slot_element_assign_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.assign(nodes)"
