///|
extern "js" fn dom_rect_init_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectInit =
  #|(x, y, width, height) => {
  #|  const obj = {};
  #|  if (x !== undefined) obj.x = x;
  #|  if (y !== undefined) obj.y = y;
  #|  if (width !== undefined) obj.width = width;
  #|  if (height !== undefined) obj.height = height;
  #|  return obj;
  #|}

///|
extern "js" fn dom_rect_init_empty_ffi() -> DOMRectInit = "() => {}"
