// Auto-generated MoonBit bindings for MutationRecord interface
// Do not edit manually

#external
pub type MutationRecord

pub impl TJsValue for MutationRecord with to_js(self: MutationRecord) -> JsValue = "%identity"


pub fn[T: TMutationRecord] MutationRecord::into(self : MutationRecord) -> T = "%identity"
pub impl TMutationRecord for MutationRecord

pub trait TMutationRecord: TJSValue {
  type_(self: Self) -> String = _
  target(self: Self) -> &TNode = _
  added_nodes(self: Self) -> &TNodeList = _
  removed_nodes(self: Self) -> &TNodeList = _
  previous_sibling(self: Self) -> &TNode = _
  next_sibling(self: Self) -> &TNode = _
  attribute_name(self: Self) -> String = _
  attribute_namespace(self: Self) -> String = _
  old_value(self: Self) -> String = _
}

///|
fn mutation_record_type_ffi(obj : JsValue) -> String = "webapi_MutationRecord" "type"

///|
impl TMutationRecord with type_(self : Self) -> String {
  mutation_record_type_ffi(self.to_js())
}

///|
fn mutation_record_target_ffi(obj : JsValue) -> JsValue = "webapi_MutationRecord" "target"

///|
impl TMutationRecord with target(self : Self) -> &TNode {
  mutation_record_target_ffi(self.to_js()).unsafe_cast()
}

///|
fn mutation_record_added_nodes_ffi(obj : JsValue) -> JsValue = "webapi_MutationRecord" "addedNodes"

///|
impl TMutationRecord with added_nodes(self : Self) -> &TNodeList {
  mutation_record_added_nodes_ffi(self.to_js()).unsafe_cast()
}

///|
fn mutation_record_removed_nodes_ffi(obj : JsValue) -> JsValue = "webapi_MutationRecord" "removedNodes"

///|
impl TMutationRecord with removed_nodes(self : Self) -> &TNodeList {
  mutation_record_removed_nodes_ffi(self.to_js()).unsafe_cast()
}

///|
fn mutation_record_previous_sibling_ffi(obj : JsValue) -> JsValue = "webapi_MutationRecord" "previousSibling"

///|
impl TMutationRecord with previous_sibling(self : Self) -> &TNode {
  mutation_record_previous_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn mutation_record_next_sibling_ffi(obj : JsValue) -> JsValue = "webapi_MutationRecord" "nextSibling"

///|
impl TMutationRecord with next_sibling(self : Self) -> &TNode {
  mutation_record_next_sibling_ffi(self.to_js()).unsafe_cast()
}

///|
fn mutation_record_attribute_name_ffi(obj : JsValue) -> String = "webapi_MutationRecord" "attributeName"

///|
impl TMutationRecord with attribute_name(self : Self) -> String {
  mutation_record_attribute_name_ffi(self.to_js())
}

///|
fn mutation_record_attribute_namespace_ffi(obj : JsValue) -> String = "webapi_MutationRecord" "attributeNamespace"

///|
impl TMutationRecord with attribute_namespace(self : Self) -> String {
  mutation_record_attribute_namespace_ffi(self.to_js())
}

///|
fn mutation_record_old_value_ffi(obj : JsValue) -> String = "webapi_MutationRecord" "oldValue"

///|
impl TMutationRecord with old_value(self : Self) -> String {
  mutation_record_old_value_ffi(self.to_js())
}