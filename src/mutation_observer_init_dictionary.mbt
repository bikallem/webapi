// Do not edit. This file is generated.
// MoonBit type: MutationObserverInit
// Specifications: dom.idl

///|
/// [MutationObserverInit](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserverInit)
#external
pub type MutationObserverInit

///|
pub impl TJsValue for MutationObserverInit with to_js(
  self : MutationObserverInit,
) -> JsValue = "%identity"

///|
extern "js" fn mutation_observer_init_ffi(
  child_list : JsValue,
  attributes : JsValue,
  character_data : JsValue,
  subtree : JsValue,
  attribute_old_value : JsValue,
  character_data_old_value : JsValue,
  attribute_filter : JsValue,
) -> MutationObserverInit =
  #|(childList, attributes, characterData, subtree, attributeOldValue, characterDataOldValue, attributeFilter) => {
  #|  const obj = {};
  #|  if (childList !== undefined) obj.childList = childList;
  #|  if (attributes !== undefined) obj.attributes = attributes;
  #|  if (characterData !== undefined) obj.characterData = characterData;
  #|  if (subtree !== undefined) obj.subtree = subtree;
  #|  if (attributeOldValue !== undefined) obj.attributeOldValue = attributeOldValue;
  #|  if (characterDataOldValue !== undefined) obj.characterDataOldValue = characterDataOldValue;
  #|  if (attributeFilter !== undefined) obj.attributeFilter = attributeFilter;
  #|  return obj;
  #|}

///|
pub fn MutationObserverInit::new(
  child_list? : Bool = false,
  attributes? : Bool,
  character_data? : Bool,
  subtree? : Bool = false,
  attribute_old_value? : Bool,
  character_data_old_value? : Bool,
  attribute_filter? : Array[String],
) -> MutationObserverInit {
  mutation_observer_init_ffi(
    TJsValue::to_js(child_list),
    opt_to_js(attributes),
    opt_to_js(character_data),
    TJsValue::to_js(subtree),
    opt_to_js(attribute_old_value),
    opt_to_js(character_data_old_value),
    opt_to_js(attribute_filter),
  )
}

///|
extern "js" fn mutation_observer_init_empty_ffi() -> MutationObserverInit = "() => {}"

///|
pub fn MutationObserverInit::empty() -> MutationObserverInit {
  mutation_observer_init_empty_ffi()
}
