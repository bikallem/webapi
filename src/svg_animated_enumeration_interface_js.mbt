///|
extern "js" fn svg_animated_enumeration_base_val_ffi(obj : JsValue) -> JsValue = "(obj) => obj.baseVal"

///|
extern "js" fn svg_animated_enumeration_set_base_val_ffi(
  obj : JsValue,
  base_val : JsValue,
) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

///|
extern "js" fn svg_animated_enumeration_anim_val_ffi(obj : JsValue) -> JsValue = "(obj) => obj.animVal"
