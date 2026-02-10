extern "js" fn dom_rect_read_only_new_ffi(x: JsValue, y: JsValue, width: JsValue, height: JsValue) -> DOMRectReadOnly = "(x, y, width, height) => new DOMRectReadOnly(x, y, width, height)"

extern "js" fn dom_rect_read_only_from_rect_ffi_js(other: JsValue) -> JsValue = "(other) => DOMRectReadOnly.fromRect(other)"

///|
fn dom_rect_read_only_from_rect_ffi(other: JsValue) -> DOMRectReadOnly {
  dom_rect_read_only_from_rect_ffi_js(other).unsafe_cast()
}

extern "js" fn dom_rect_read_only_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
fn dom_rect_read_only_x_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_x_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
fn dom_rect_read_only_y_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_y_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn dom_rect_read_only_width_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn dom_rect_read_only_height_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_top_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.top"

///|
fn dom_rect_read_only_top_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_top_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_right_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.right"

///|
fn dom_rect_read_only_right_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_right_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_bottom_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bottom"

///|
fn dom_rect_read_only_bottom_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_bottom_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_left_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.left"

///|
fn dom_rect_read_only_left_ffi(obj: JsValue) -> Double {
  dom_rect_read_only_left_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_read_only_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn dom_rect_read_only_to_json_ffi(obj: JsValue) -> JsValue {
  dom_rect_read_only_to_json_ffi_js(obj).unsafe_cast()
}