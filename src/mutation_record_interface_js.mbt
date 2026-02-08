///|
extern "js" fn mutation_record_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn mutation_record_target_ffi(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
extern "js" fn mutation_record_added_nodes_ffi(obj : JsValue) -> JsValue = "(obj) => obj.addedNodes"

///|
extern "js" fn mutation_record_removed_nodes_ffi(obj : JsValue) -> JsValue = "(obj) => obj.removedNodes"

///|
extern "js" fn mutation_record_previous_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.previousSibling"

///|
extern "js" fn mutation_record_next_sibling_ffi(obj : JsValue) -> JsValue = "(obj) => obj.nextSibling"

///|
extern "js" fn mutation_record_attribute_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.attributeName"

///|
extern "js" fn mutation_record_attribute_namespace_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.attributeNamespace"

///|
extern "js" fn mutation_record_old_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oldValue"
