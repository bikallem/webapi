fn mutation_record_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MutationRecord" "get_type"

///|
fn mutation_record_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mutation_record_type_ffi_wasm(obj))
}

fn mutation_record_target_ffi(obj: JsValue) -> Node = "webapi_MutationRecord" "get_target"

fn mutation_record_added_nodes_ffi(obj: JsValue) -> NodeList = "webapi_MutationRecord" "get_addedNodes"

fn mutation_record_removed_nodes_ffi(obj: JsValue) -> NodeList = "webapi_MutationRecord" "get_removedNodes"

fn mutation_record_previous_sibling_ffi(obj: JsValue) -> Node = "webapi_MutationRecord" "get_previousSibling"

fn mutation_record_next_sibling_ffi(obj: JsValue) -> Node = "webapi_MutationRecord" "get_nextSibling"

fn mutation_record_attribute_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MutationRecord" "get_attributeName"

///|
fn mutation_record_attribute_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mutation_record_attribute_name_ffi_wasm(obj))
}

fn mutation_record_attribute_namespace_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MutationRecord" "get_attributeNamespace"

///|
fn mutation_record_attribute_namespace_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mutation_record_attribute_namespace_ffi_wasm(obj))
}

fn mutation_record_old_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MutationRecord" "get_oldValue"

///|
fn mutation_record_old_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mutation_record_old_value_ffi_wasm(obj))
}