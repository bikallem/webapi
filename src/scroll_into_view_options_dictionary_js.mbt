///|
extern "js" fn scroll_into_view_options_ffi(
  behavior : JsValue,
  block : JsValue,
  inline : JsValue,
  container : JsValue,
) -> ScrollIntoViewOptions =
  #|(behavior, block, inline, container) => {
  #|  const obj = {};
  #|  if (behavior !== undefined) obj.behavior = behavior;
  #|  if (block !== undefined) obj.block = block;
  #|  if (inline !== undefined) obj.inline = inline;
  #|  if (container !== undefined) obj.container = container;
  #|  return obj;
  #|}

///|
extern "js" fn scroll_into_view_options_empty_ffi() -> ScrollIntoViewOptions = "() => {}"

///|
extern "js" fn scroll_into_view_options_get_behavior_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.behavior"

///|
extern "js" fn scroll_into_view_options_get_block_ffi(obj : JsValue) -> JsValue = "(obj) => obj.block"

///|
extern "js" fn scroll_into_view_options_get_inline_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.inline"

///|
extern "js" fn scroll_into_view_options_get_container_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.container"
