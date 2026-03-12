///|
extern "js" fn get_animations_options_ffi(
  subtree : JsValue,
  pseudo_element : JsValue,
) -> GetAnimationsOptions =
  #|(subtree, pseudoElement) => {
  #|  const obj = {};
  #|  if (subtree !== undefined) obj.subtree = subtree;
  #|  if (pseudoElement !== undefined) obj.pseudoElement = pseudoElement;
  #|  return obj;
  #|}

///|
extern "js" fn get_animations_options_empty_ffi() -> GetAnimationsOptions = "() => {}"

///|
extern "js" fn get_animations_options_get_subtree_ffi(obj : JsValue) -> JsValue = "(obj) => obj.subtree"

///|
extern "js" fn get_animations_options_get_pseudo_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pseudoElement"
