///|
extern "js" fn svg_animated_transform_list_base_val_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.baseVal"

///|
extern "js" fn svg_animated_transform_list_anim_val_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animVal"
