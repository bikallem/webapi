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
