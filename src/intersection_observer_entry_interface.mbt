// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverEntry
// Specifications: intersection-observer.idl

///|
/// [IntersectionObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry)
#external
pub type IntersectionObserverEntry

///|
pub impl TJsValue for IntersectionObserverEntry with to_js(
  self : IntersectionObserverEntry,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverEntry with from_js_any(value : JsAny) -> IntersectionObserverEntry = "%identity"

///|
pub fn[T : TIntersectionObserverEntry] IntersectionObserverEntry::into(
  self : IntersectionObserverEntry,
) -> T = "%identity"

///|
pub impl TIntersectionObserverEntry for IntersectionObserverEntry

///|
pub fn IntersectionObserverEntry::new(
  intersection_observer_entry_init : IntersectionObserverEntryInit,
) -> IntersectionObserverEntry {
  intersection_observer_entry_new_ffi(
    TJsValue::to_js(intersection_observer_entry_init),
  )
}

///|
/// [IntersectionObserverEntry](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry) interface.
pub trait TIntersectionObserverEntry: TJsValue {
  time(self : Self) -> DOMHighResTimeStamp = _
  root_bounds(self : Self) -> DOMRectReadOnly = _
  bounding_client_rect(self : Self) -> DOMRectReadOnly = _
  intersection_rect(self : Self) -> DOMRectReadOnly = _
  is_intersecting(self : Self) -> Bool = _
  is_visible(self : Self) -> Bool = _
  intersection_ratio(self : Self) -> Double = _
  target(self : Self) -> Element = _
}

///|
/// [IntersectionObserverEntry.time](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/time)
impl TIntersectionObserverEntry with time(self : Self) -> DOMHighResTimeStamp {
  intersection_observer_entry_time_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.rootBounds](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/rootBounds)
impl TIntersectionObserverEntry with root_bounds(self : Self) -> DOMRectReadOnly {
  intersection_observer_entry_root_bounds_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.boundingClientRect](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/boundingClientRect)
impl TIntersectionObserverEntry with bounding_client_rect(self : Self) -> DOMRectReadOnly {
  intersection_observer_entry_bounding_client_rect_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.intersectionRect](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/intersectionRect)
impl TIntersectionObserverEntry with intersection_rect(self : Self) -> DOMRectReadOnly {
  intersection_observer_entry_intersection_rect_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.isIntersecting](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/isIntersecting)
impl TIntersectionObserverEntry with is_intersecting(self : Self) -> Bool {
  intersection_observer_entry_is_intersecting_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.isVisible](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/isVisible)
impl TIntersectionObserverEntry with is_visible(self : Self) -> Bool {
  intersection_observer_entry_is_visible_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.intersectionRatio](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/intersectionRatio)
impl TIntersectionObserverEntry with intersection_ratio(self : Self) -> Double {
  intersection_observer_entry_intersection_ratio_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserverEntry.target](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntry/target)
impl TIntersectionObserverEntry with target(self : Self) -> Element {
  intersection_observer_entry_target_ffi(TJsValue::to_js(self))
}
