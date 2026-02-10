///|
extern "js" fn resize_observer_entry_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn resize_observer_entry_target_ffi(obj : JsValue) -> Element {
  resize_observer_entry_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn resize_observer_entry_content_rect_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentRect"

///|
fn resize_observer_entry_content_rect_ffi(obj : JsValue) -> DOMRectReadOnly {
  resize_observer_entry_content_rect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn resize_observer_entry_border_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.borderBoxSize"

///|
fn resize_observer_entry_border_box_size_ffi(obj : JsValue) -> JsValue {
  resize_observer_entry_border_box_size_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn resize_observer_entry_content_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentBoxSize"

///|
fn resize_observer_entry_content_box_size_ffi(obj : JsValue) -> JsValue {
  resize_observer_entry_content_box_size_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn resize_observer_entry_device_pixel_content_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.devicePixelContentBoxSize"

///|
fn resize_observer_entry_device_pixel_content_box_size_ffi(
  obj : JsValue,
) -> JsValue {
  resize_observer_entry_device_pixel_content_box_size_ffi_js(obj).unsafe_cast()
}
