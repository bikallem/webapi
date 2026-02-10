// Do not edit. This file is generated.
// MoonBit type: IntersectionObserver
// Specifications: intersection-observer.idl

///|
/// [IntersectionObserver](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver)
#external
pub type IntersectionObserver

///|
pub impl TJsValue for IntersectionObserver with to_js(
  self : IntersectionObserver,
) -> JsValue = "%identity"

///|
pub fn[T : TIntersectionObserver] IntersectionObserver::into(
  self : IntersectionObserver,
) -> T = "%identity"

///|
pub impl TIntersectionObserver for IntersectionObserver

///|
pub fn IntersectionObserver::new(
  callback : IntersectionObserverCallback,
  options? : IntersectionObserverInit = IntersectionObserverInit::empty(),
) -> IntersectionObserver {
  intersection_observer_new_ffi(
    TJsValue::to_js(callback),
    TJsValue::to_js(options),
  )
}

///|
/// [IntersectionObserverRoot](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverRoot)
#external
pub type IntersectionObserverRoot

///|
pub fn[T : TIntersectionObserverRoot] IntersectionObserverRoot::into(
  self : IntersectionObserverRoot,
) -> T = "%identity"

///|
pub impl TIntersectionObserverRoot for IntersectionObserverRoot with to_js(
  self : IntersectionObserverRoot,
) -> JsValue = "%identity"

///|
pub(open) trait TIntersectionObserverRoot {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIntersectionObserverRoot for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TIntersectionObserverRoot for Document with to_js(self : Document) -> JsValue = "%identity"

///|
/// [IntersectionObserver](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver) interface.
pub trait TIntersectionObserver: TJsValue {
  root(self : Self) -> IntersectionObserverRoot = _
  root_margin(self : Self) -> String = _
  scroll_margin(self : Self) -> String = _
  thresholds(self : Self) -> JsValue = _
  delay(self : Self) -> Int = _
  track_visibility(self : Self) -> Bool = _
  observe(self : Self, target : &TElement) -> Unit = _
  unobserve(self : Self, target : &TElement) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> Array[IntersectionObserverEntry] = _
}

///|
/// [IntersectionObserver.root](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/root)
impl TIntersectionObserver with root(self : Self) -> IntersectionObserverRoot {
  intersection_observer_root_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.rootMargin](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/rootMargin)
impl TIntersectionObserver with root_margin(self : Self) -> String {
  intersection_observer_root_margin_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.scrollMargin](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/scrollMargin)
impl TIntersectionObserver with scroll_margin(self : Self) -> String {
  intersection_observer_scroll_margin_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.thresholds](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/thresholds)
impl TIntersectionObserver with thresholds(self : Self) -> JsValue {
  intersection_observer_thresholds_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.delay](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/delay)
impl TIntersectionObserver with delay(self : Self) -> Int {
  intersection_observer_delay_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.trackVisibility](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/trackVisibility)
impl TIntersectionObserver with track_visibility(self : Self) -> Bool {
  intersection_observer_track_visibility_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.observe](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/observe)
impl TIntersectionObserver with observe(self : Self, target : &TElement) -> Unit {
  intersection_observer_observe_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
/// [IntersectionObserver.unobserve](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/unobserve)
impl TIntersectionObserver with unobserve(self : Self, target : &TElement) -> Unit {
  intersection_observer_unobserve_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
/// [IntersectionObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/disconnect)
impl TIntersectionObserver with disconnect(self : Self) -> Unit {
  intersection_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
/// [IntersectionObserver.takeRecords](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/takeRecords)
impl TIntersectionObserver with take_records(self : Self) -> Array[
  IntersectionObserverEntry,
] {
  intersection_observer_take_records_ffi(TJsValue::to_js(self))
}
