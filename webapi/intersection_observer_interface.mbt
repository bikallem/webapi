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
pub impl FromJsAny for IntersectionObserver with from_js_any(value : JsAny) -> IntersectionObserver = "%identity"

///|
pub fn[T : TIntersectionObserver] IntersectionObserver::into(
  self : IntersectionObserver,
) -> T = "%identity"

///|
pub impl TIntersectionObserver for IntersectionObserver

///|
pub fn IntersectionObserver::new(
  callback : (Array[IntersectionObserverEntry], IntersectionObserver) -> Unit,
  options? : IntersectionObserverInit,
) -> IntersectionObserver {
  intersection_observer_new_ffi(
    TJsValue::to_js(intersection_observer_callback_ffi(callback)),
    opt_to_js(options),
  )
}

///|
pub(open) trait TIntersectionObserverRoot: TJsValue {}

///|
pub impl TIntersectionObserverRoot for Element

///|
pub impl TIntersectionObserverRoot for Document

///|
#external
pub type IntersectionObserverRoot

///|
pub impl TJsValue for IntersectionObserverRoot with to_js(
  self : IntersectionObserverRoot,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverRoot with from_js_any(value : JsAny) -> IntersectionObserverRoot = "%identity"

///|
pub fn[T : TIntersectionObserverRoot + FromJsAny] IntersectionObserverRoot::into(
  self : IntersectionObserverRoot,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverRoot] IntersectionObserverRoot::from(
  value : T,
) -> IntersectionObserverRoot = "%identity"

///|
pub impl TIntersectionObserverRoot for IntersectionObserverRoot

///|
/// [IntersectionObserver](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver) interface.
pub trait TIntersectionObserver: TJsValue {
  root(self : Self) -> IntersectionObserverRoot = _
  root_margin(self : Self) -> String = _
  scroll_margin(self : Self) -> String = _
  thresholds(self : Self) -> Array[Double] = _
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
impl TIntersectionObserver with thresholds(self : Self) -> Array[Double] {
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

///|
#cfg(target="js")
extern "js" fn intersection_observer_new_ffi(
  callback : JsValue,
  options : JsValue,
) -> IntersectionObserver = "(callback, options) => new IntersectionObserver(callback, options)"

///|
#cfg(target="js")
extern "js" fn intersection_observer_root_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.root"

///|
#cfg(target="js")
fn intersection_observer_root_ffi(obj : JsValue) -> IntersectionObserverRoot {
  intersection_observer_root_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_root_margin_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rootMargin"

///|
#cfg(target="js")
fn intersection_observer_root_margin_ffi(obj : JsValue) -> String {
  intersection_observer_root_margin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_scroll_margin_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.scrollMargin"

///|
#cfg(target="js")
fn intersection_observer_scroll_margin_ffi(obj : JsValue) -> String {
  intersection_observer_scroll_margin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_thresholds_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.thresholds"

///|
#cfg(target="js")
fn intersection_observer_thresholds_ffi(obj : JsValue) -> Array[Double] {
  intersection_observer_thresholds_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_delay_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.delay"

///|
#cfg(target="js")
fn intersection_observer_delay_ffi(obj : JsValue) -> Int {
  intersection_observer_delay_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_track_visibility_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.trackVisibility"

///|
#cfg(target="js")
fn intersection_observer_track_visibility_ffi(obj : JsValue) -> Bool {
  intersection_observer_track_visibility_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_observe_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => obj.observe(target)"

///|
#cfg(target="js")
extern "js" fn intersection_observer_unobserve_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => obj.unobserve(target)"

///|
#cfg(target="js")
extern "js" fn intersection_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect()"

///|
#cfg(target="js")
extern "js" fn intersection_observer_take_records_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.takeRecords()"

///|
#cfg(target="js")
fn intersection_observer_take_records_ffi(
  obj : JsValue,
) -> Array[IntersectionObserverEntry] {
  intersection_observer_take_records_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_new_ffi(
  callback : JsValue,
  options : JsValue,
) -> IntersectionObserver = "webapi_IntersectionObserver" "new"

///|
#cfg(target="wasm-gc")
fn intersection_observer_root_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IntersectionObserver" "get_root"

///|
#cfg(target="wasm-gc")
fn intersection_observer_root_ffi(obj : JsValue) -> IntersectionObserverRoot {
  intersection_observer_root_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_root_margin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IntersectionObserver" "get_rootMargin"

///|
#cfg(target="wasm-gc")
fn intersection_observer_root_margin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(intersection_observer_root_margin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_scroll_margin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IntersectionObserver" "get_scrollMargin"

///|
#cfg(target="wasm-gc")
fn intersection_observer_scroll_margin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(intersection_observer_scroll_margin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_thresholds_ffi_wasm(obj : JsValue) -> JsArray = "webapi_IntersectionObserver" "get_thresholds"

///|
#cfg(target="wasm-gc")
fn intersection_observer_thresholds_ffi(obj : JsValue) -> Array[Double] {
  intersection_observer_thresholds_ffi_wasm(obj).to_value_array()
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_delay_ffi(obj : JsValue) -> Int = "webapi_IntersectionObserver" "get_delay"

///|
#cfg(target="wasm-gc")
fn intersection_observer_track_visibility_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserver" "get_trackVisibility"

///|
#cfg(target="wasm-gc")
fn intersection_observer_observe_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_IntersectionObserver" "observe"

///|
#cfg(target="wasm-gc")
fn intersection_observer_unobserve_ffi(obj : JsValue, target : JsValue) -> Unit = "webapi_IntersectionObserver" "unobserve"

///|
#cfg(target="wasm-gc")
fn intersection_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_IntersectionObserver" "disconnect"

///|
#cfg(target="wasm-gc")
fn intersection_observer_take_records_ffi_wasm(obj : JsValue) -> JsArray = "webapi_IntersectionObserver" "takeRecords"

///|
#cfg(target="wasm-gc")
fn intersection_observer_take_records_ffi(
  obj : JsValue,
) -> Array[IntersectionObserverEntry] {
  intersection_observer_take_records_ffi_wasm(obj).to_array()
}
