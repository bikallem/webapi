// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverEntryInit
// Specifications: intersection-observer.idl

///|
/// [IntersectionObserverEntryInit](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntryInit)
#external
pub type IntersectionObserverEntryInit

///|
pub impl TJsValue for IntersectionObserverEntryInit with to_js(
  self : IntersectionObserverEntryInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverEntryInit with from_js_any(
  value : JsAny,
) -> IntersectionObserverEntryInit = "%identity"

///|
pub fn IntersectionObserverEntryInit::new(
  time : DOMHighResTimeStamp,
  root_bounds : DOMRectInit,
  bounding_client_rect : DOMRectInit,
  intersection_rect : DOMRectInit,
  is_intersecting : Bool,
  is_visible : Bool,
  intersection_ratio : Double,
  target : &TElement,
) -> IntersectionObserverEntryInit {
  intersection_observer_entry_init_ffi(
    TJsValue::to_js(time),
    TJsValue::to_js(root_bounds),
    TJsValue::to_js(bounding_client_rect),
    TJsValue::to_js(intersection_rect),
    TJsValue::to_js(is_intersecting),
    TJsValue::to_js(is_visible),
    TJsValue::to_js(intersection_ratio),
    TJsValue::to_js(target),
  )
}

///|
pub fn IntersectionObserverEntryInit::empty() -> IntersectionObserverEntryInit {
  intersection_observer_entry_init_empty_ffi()
}

///|
pub fn IntersectionObserverEntryInit::time(
  self : IntersectionObserverEntryInit,
) -> DOMHighResTimeStamp {
  intersection_observer_entry_init_get_time_ffi(TJsValue::to_js(self))
}

///|
pub fn IntersectionObserverEntryInit::root_bounds(
  self : IntersectionObserverEntryInit,
) -> DOMRectInit {
  intersection_observer_entry_init_get_root_bounds_ffi(TJsValue::to_js(self))
}

///|
pub fn IntersectionObserverEntryInit::bounding_client_rect(
  self : IntersectionObserverEntryInit,
) -> DOMRectInit {
  intersection_observer_entry_init_get_bounding_client_rect_ffi(
    TJsValue::to_js(self),
  )
}

///|
pub fn IntersectionObserverEntryInit::intersection_rect(
  self : IntersectionObserverEntryInit,
) -> DOMRectInit {
  intersection_observer_entry_init_get_intersection_rect_ffi(
    TJsValue::to_js(self),
  )
}

///|
pub fn IntersectionObserverEntryInit::is_intersecting(
  self : IntersectionObserverEntryInit,
) -> Bool {
  intersection_observer_entry_init_get_is_intersecting_ffi(
    TJsValue::to_js(self),
  )
}

///|
pub fn IntersectionObserverEntryInit::is_visible(
  self : IntersectionObserverEntryInit,
) -> Bool {
  intersection_observer_entry_init_get_is_visible_ffi(TJsValue::to_js(self))
}

///|
pub fn IntersectionObserverEntryInit::intersection_ratio(
  self : IntersectionObserverEntryInit,
) -> Double {
  intersection_observer_entry_init_get_intersection_ratio_ffi(
    TJsValue::to_js(self),
  )
}

///|
pub fn IntersectionObserverEntryInit::target(
  self : IntersectionObserverEntryInit,
) -> Element {
  intersection_observer_entry_init_get_target_ffi(TJsValue::to_js(self))
}
