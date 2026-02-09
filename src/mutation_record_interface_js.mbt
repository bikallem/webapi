///|
extern "js" fn mutation_record_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn mutation_record_type_ffi(obj : JsValue) -> String {
  mutation_record_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn mutation_record_target_ffi(obj : JsValue) -> Node {
  mutation_record_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_added_nodes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.addedNodes"

///|
fn mutation_record_added_nodes_ffi(obj : JsValue) -> NodeList {
  mutation_record_added_nodes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_removed_nodes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.removedNodes"

///|
fn mutation_record_removed_nodes_ffi(obj : JsValue) -> NodeList {
  mutation_record_removed_nodes_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_previous_sibling_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.previousSibling"

///|
fn mutation_record_previous_sibling_ffi(obj : JsValue) -> Node {
  mutation_record_previous_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_next_sibling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling"

///|
fn mutation_record_next_sibling_ffi(obj : JsValue) -> Node {
  mutation_record_next_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_attribute_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.attributeName"

///|
fn mutation_record_attribute_name_ffi(obj : JsValue) -> String {
  mutation_record_attribute_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_attribute_namespace_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.attributeNamespace"

///|
fn mutation_record_attribute_namespace_ffi(obj : JsValue) -> String {
  mutation_record_attribute_namespace_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mutation_record_old_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oldValue"

///|
fn mutation_record_old_value_ffi(obj : JsValue) -> String {
  mutation_record_old_value_ffi_js(obj).unsafe_cast()
}
