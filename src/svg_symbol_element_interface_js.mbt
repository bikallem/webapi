///|
extern "js" fn svg_symbol_element_view_box_ffi(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
extern "js" fn svg_symbol_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"
