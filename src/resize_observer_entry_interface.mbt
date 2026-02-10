// Do not edit. This file is generated.
// MoonBit type: ResizeObserverEntry
// Specifications: resize-observer.idl

/// [ResizeObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry)
#external
pub type ResizeObserverEntry

pub impl TJsValue for ResizeObserverEntry with to_js(self: ResizeObserverEntry) -> JsValue = "%identity"

pub fn[T: TResizeObserverEntry] ResizeObserverEntry::into(self : ResizeObserverEntry) -> T = "%identity"

pub impl TResizeObserverEntry for ResizeObserverEntry

/// [ResizeObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry) interface.
pub trait TResizeObserverEntry: TJsValue {
  target(self : Self) -> Element = _
  content_rect(self : Self) -> DOMRectReadOnly = _
  border_box_size(self : Self) -> JsValue = _
  content_box_size(self : Self) -> JsValue = _
  device_pixel_content_box_size(self : Self) -> JsValue = _
}

/// [ResizeObserverEntry.target](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/target)
impl TResizeObserverEntry with target(self : Self) -> Element {
  resize_observer_entry_target_ffi(TJsValue::to_js(self))
}

/// [ResizeObserverEntry.contentRect](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/contentRect)
impl TResizeObserverEntry with content_rect(self : Self) -> DOMRectReadOnly {
  resize_observer_entry_content_rect_ffi(TJsValue::to_js(self))
}

/// [ResizeObserverEntry.borderBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/borderBoxSize)
impl TResizeObserverEntry with border_box_size(self : Self) -> JsValue {
  resize_observer_entry_border_box_size_ffi(TJsValue::to_js(self))
}

/// [ResizeObserverEntry.contentBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/contentBoxSize)
impl TResizeObserverEntry with content_box_size(self : Self) -> JsValue {
  resize_observer_entry_content_box_size_ffi(TJsValue::to_js(self))
}

/// [ResizeObserverEntry.devicePixelContentBoxSize](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverEntry/devicePixelContentBoxSize)
impl TResizeObserverEntry with device_pixel_content_box_size(self : Self) -> JsValue {
  resize_observer_entry_device_pixel_content_box_size_ffi(TJsValue::to_js(self))
}