// Do not edit. This file is generated.
// MoonBit type: MutationRecord
// Specifications: dom.idl

///|
/// [MutationRecord](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord)
#external
pub type MutationRecord

///|
pub impl TJsValue for MutationRecord with to_js(self : MutationRecord) -> JsValue = "%identity"

///|
pub impl FromJsAny for MutationRecord with from_js_any(value : JsAny) -> MutationRecord = "%identity"

///|
pub fn[T : TMutationRecord] MutationRecord::into(self : MutationRecord) -> T = "%identity"

///|
pub impl TMutationRecord for MutationRecord

///|
/// [MutationRecord](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord) interface.
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
/// [MutationRecord.type](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/type)
impl TMutationRecord with type_(self : Self) -> String {
  mutation_record_type_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.target](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/target)
impl TMutationRecord with target(self : Self) -> Node {
  mutation_record_target_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.addedNodes](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/addedNodes)
impl TMutationRecord with added_nodes(self : Self) -> NodeList {
  mutation_record_added_nodes_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.removedNodes](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/removedNodes)
impl TMutationRecord with removed_nodes(self : Self) -> NodeList {
  mutation_record_removed_nodes_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.previousSibling](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/previousSibling)
impl TMutationRecord with previous_sibling(self : Self) -> Node {
  mutation_record_previous_sibling_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.nextSibling](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/nextSibling)
impl TMutationRecord with next_sibling(self : Self) -> Node {
  mutation_record_next_sibling_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.attributeName](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/attributeName)
impl TMutationRecord with attribute_name(self : Self) -> String {
  mutation_record_attribute_name_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.attributeNamespace](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/attributeNamespace)
impl TMutationRecord with attribute_namespace(self : Self) -> String {
  mutation_record_attribute_namespace_ffi(TJsValue::to_js(self))
}

///|
/// [MutationRecord.oldValue](https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord/oldValue)
impl TMutationRecord with old_value(self : Self) -> String {
  mutation_record_old_value_ffi(TJsValue::to_js(self))
}
