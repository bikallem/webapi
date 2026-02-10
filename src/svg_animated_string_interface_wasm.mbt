fn svg_animated_string_base_val_ffi(obj: JsValue) -> SVGAnimatedStringBaseVal = "webapi_SVGAnimatedString" "get_baseVal"

fn svg_animated_string_set_base_val_ffi(obj: JsValue, base_val: JsValue) -> Unit = "webapi_SVGAnimatedString" "set_baseVal"

fn svg_animated_string_anim_val_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGAnimatedString" "get_animVal"

///|
fn svg_animated_string_anim_val_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_animated_string_anim_val_ffi_wasm(obj))
}