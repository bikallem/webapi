// Do not edit. This file is generated.
// MoonBit type: ResizeObserverEntry
// Specifications: resize-observer.idl

///|
/// [ResizeObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry)
#external
pub type ResizeObserverEntry

///|
pub impl TJsValue for ResizeObserverEntry with to_js(self : ResizeObserverEntry) -> JsValue = "%identity"

///|
pub impl FromJsAny for ResizeObserverEntry with from_js_any(value : JsAny) -> ResizeObserverEntry = "%identity"

///|
pub fn[T : TResizeObserverEntry] ResizeObserverEntry::into(
  self : ResizeObserverEntry,
) -> T = "%identity"

///|
pub impl TResizeObserverEntry for ResizeObserverEntry

///|
/// [ResizeObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry) interface.
pub trait TResizeObserverEntry: TJsValue {
  target(self : Self) -> Element = _
  content_rect(self : Self) -> DOMRectReadOnly = _
  border_box_size(self : Self) -> Array[ResizeObserverSize] = _
  content_box_size(self : Self) -> Array[ResizeObserverSize] = _
  device_pixel_content_box_size(self : Self) -> Array[ResizeObserverSize] = _
}

///|
/// [ResizeObserverEntry.target](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/target)
impl TResizeObserverEntry with target(self : Self) -> Element {
  resize_observer_entry_target_ffi(TJsValue::to_js(self))
}

///|
/// [ResizeObserverEntry.contentRect](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/contentRect)
impl TResizeObserverEntry with content_rect(self : Self) -> DOMRectReadOnly {
  resize_observer_entry_content_rect_ffi(TJsValue::to_js(self))
}

///|
/// [ResizeObserverEntry.borderBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/borderBoxSize)
impl TResizeObserverEntry with border_box_size(self : Self) -> Array[
  ResizeObserverSize,
] {
  resize_observer_entry_border_box_size_ffi(TJsValue::to_js(self))
}

///|
/// [ResizeObserverEntry.contentBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/contentBoxSize)
impl TResizeObserverEntry with content_box_size(self : Self) -> Array[
  ResizeObserverSize,
] {
  resize_observer_entry_content_box_size_ffi(TJsValue::to_js(self))
}

///|
/// [ResizeObserverEntry.devicePixelContentBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/devicePixelContentBoxSize)
impl TResizeObserverEntry with device_pixel_content_box_size(self : Self) -> Array[
  ResizeObserverSize,
] {
  resize_observer_entry_device_pixel_content_box_size_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn resize_observer_entry_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn resize_observer_entry_target_ffi(obj : JsValue) -> Element {
  resize_observer_entry_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn resize_observer_entry_content_rect_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentRect"

///|
#cfg(target="js")
fn resize_observer_entry_content_rect_ffi(obj : JsValue) -> DOMRectReadOnly {
  resize_observer_entry_content_rect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn resize_observer_entry_border_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.borderBoxSize"

///|
#cfg(target="js")
fn resize_observer_entry_border_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_border_box_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn resize_observer_entry_content_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentBoxSize"

///|
#cfg(target="js")
fn resize_observer_entry_content_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_content_box_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn resize_observer_entry_device_pixel_content_box_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.devicePixelContentBoxSize"

///|
#cfg(target="js")
fn resize_observer_entry_device_pixel_content_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_device_pixel_content_box_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_target_ffi(obj : JsValue) -> Element = "webapi_ResizeObserverEntry" "get_target"

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_content_rect_ffi(obj : JsValue) -> DOMRectReadOnly = "webapi_ResizeObserverEntry" "get_contentRect"

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_border_box_size_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ResizeObserverEntry" "get_borderBoxSize"

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_border_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_border_box_size_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_content_box_size_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ResizeObserverEntry" "get_contentBoxSize"

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_content_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_content_box_size_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_device_pixel_content_box_size_ffi_wasm(
  obj : JsValue,
) -> JsArray = "webapi_ResizeObserverEntry" "get_devicePixelContentBoxSize"

///|
#cfg(target="wasm-gc")
fn resize_observer_entry_device_pixel_content_box_size_ffi(
  obj : JsValue,
) -> Array[ResizeObserverSize] {
  resize_observer_entry_device_pixel_content_box_size_ffi_wasm(obj).to_array()
}
