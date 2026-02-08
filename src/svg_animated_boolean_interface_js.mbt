extern "js" fn svg_animated_boolean_base_val_ffi(obj: JsValue) -> JsValue = "(obj) => obj.baseVal"

extern "js" fn svg_animated_boolean_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "(obj, baseVal) => { obj.baseVal = baseVal; }"

extern "js" fn svg_animated_boolean_anim_val_ffi(obj: JsValue) -> JsValue = "(obj) => obj.animVal"