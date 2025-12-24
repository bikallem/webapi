///|
#external
pub type MutationRecord

///|
pub impl TJsValue for MutationRecord with to_js(self : MutationRecord) -> JsValue = "%identity"

///|
pub fn[T : TMutationRecord] MutationRecord::into(self : MutationRecord) -> T = "%identity"

///|
pub impl TMutationRecord for MutationRecord

///|
pub trait TMutationRecord: TJsValue {
  type_(self : Self) -> String = _
  target(self : Self) -> Node = _
  added_nodes(self : Self) -> NodeList = _
  removed_nodes(self : Self) -> NodeList = _
  previous_sibling(self : Self) -> Node = _
  next_sibling(self : Self) -> Node = _
  attribute_name(self : Self) -> String = _
  attribute_namespace(self : Self) -> String = _
  old_value(self : Self) -> String = _
}

///|
extern "js" fn mutation_record_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TMutationRecord with type_(self : Self) -> String {
  mutation_record_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_target_ffi(obj : JsValue) -> Node = "(obj) => obj.target"

///|
impl TMutationRecord with target(self : Self) -> Node {
  mutation_record_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_added_nodes_ffi(obj : JsValue) -> NodeList = "(obj) => obj.addedNodes"

///|
impl TMutationRecord with added_nodes(self : Self) -> NodeList {
  mutation_record_added_nodes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_removed_nodes_ffi(obj : JsValue) -> NodeList = "(obj) => obj.removedNodes"

///|
impl TMutationRecord with removed_nodes(self : Self) -> NodeList {
  mutation_record_removed_nodes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_previous_sibling_ffi(obj : JsValue) -> Node = "(obj) => obj.previousSibling"

///|
impl TMutationRecord with previous_sibling(self : Self) -> Node {
  mutation_record_previous_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_next_sibling_ffi(obj : JsValue) -> Node = "(obj) => obj.nextSibling"

///|
impl TMutationRecord with next_sibling(self : Self) -> Node {
  mutation_record_next_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_attribute_name_ffi(obj : JsValue) -> String = "(obj) => obj.attributeName"

///|
impl TMutationRecord with attribute_name(self : Self) -> String {
  mutation_record_attribute_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_attribute_namespace_ffi(obj : JsValue) -> String = "(obj) => obj.attributeNamespace"

///|
impl TMutationRecord with attribute_namespace(self : Self) -> String {
  mutation_record_attribute_namespace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mutation_record_old_value_ffi(obj : JsValue) -> String = "(obj) => obj.oldValue"

///|
impl TMutationRecord with old_value(self : Self) -> String {
  mutation_record_old_value_ffi(TJsValue::to_js(self))
}
