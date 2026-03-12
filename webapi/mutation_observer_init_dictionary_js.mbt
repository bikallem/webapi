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
extern "js" fn mutation_observer_init_empty_ffi() -> MutationObserverInit = "() => {}"

///|
extern "js" fn mutation_observer_init_get_child_list_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.childList"

///|
extern "js" fn mutation_observer_init_get_attributes_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.attributes"

///|
extern "js" fn mutation_observer_init_get_character_data_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.characterData"

///|
extern "js" fn mutation_observer_init_get_subtree_ffi(obj : JsValue) -> JsValue = "(obj) => obj.subtree"

///|
extern "js" fn mutation_observer_init_get_attribute_old_value_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.attributeOldValue"

///|
extern "js" fn mutation_observer_init_get_character_data_old_value_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.characterDataOldValue"

///|
extern "js" fn mutation_observer_init_get_attribute_filter_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.attributeFilter"
