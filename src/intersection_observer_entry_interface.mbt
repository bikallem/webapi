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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIntersectionObserverEntry] IntersectionObserverEntry::into(
  self : IntersectionObserverEntry,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TIntersectionObserverEntry] IntersectionObserverEntry::unsafe_into(
  self : IntersectionObserverEntry,
) -> T = "%identity"

///|
pub impl HasConstructor for IntersectionObserverEntry with constructor_name() {
  "IntersectionObserverEntry"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIntersectionObserverEntry + HasConstructor] IntersectionObserverEntry::try_into(
  self : IntersectionObserverEntry,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_new_ffi(
  intersection_observer_entry_init : JsValue,
) -> IntersectionObserverEntry = "(intersection_observer_entry_init) => new IntersectionObserverEntry(intersection_observer_entry_init)"

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_time_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.time"

///|
#cfg(target="js")
fn intersection_observer_entry_time_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  intersection_observer_entry_time_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_root_bounds_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rootBounds"

///|
#cfg(target="js")
fn intersection_observer_entry_root_bounds_ffi(
  obj : JsValue,
) -> DOMRectReadOnly {
  intersection_observer_entry_root_bounds_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_bounding_client_rect_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.boundingClientRect"

///|
#cfg(target="js")
fn intersection_observer_entry_bounding_client_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly {
  intersection_observer_entry_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_intersection_rect_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.intersectionRect"

///|
#cfg(target="js")
fn intersection_observer_entry_intersection_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly {
  intersection_observer_entry_intersection_rect_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_is_intersecting_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isIntersecting"

///|
#cfg(target="js")
fn intersection_observer_entry_is_intersecting_ffi(obj : JsValue) -> Bool {
  intersection_observer_entry_is_intersecting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_is_visible_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isVisible"

///|
#cfg(target="js")
fn intersection_observer_entry_is_visible_ffi(obj : JsValue) -> Bool {
  intersection_observer_entry_is_visible_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_intersection_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.intersectionRatio"

///|
#cfg(target="js")
fn intersection_observer_entry_intersection_ratio_ffi(obj : JsValue) -> Double {
  intersection_observer_entry_intersection_ratio_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_entry_target_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn intersection_observer_entry_target_ffi(obj : JsValue) -> Element {
  intersection_observer_entry_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_new_ffi(
  intersection_observer_entry_init : JsValue,
) -> IntersectionObserverEntry = "webapi_IntersectionObserverEntry" "new"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_time_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_IntersectionObserverEntry" "get_time"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_root_bounds_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_rootBounds"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_bounding_client_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_boundingClientRect"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_intersection_rect_ffi(
  obj : JsValue,
) -> DOMRectReadOnly = "webapi_IntersectionObserverEntry" "get_intersectionRect"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_is_intersecting_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserverEntry" "get_isIntersecting"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_is_visible_ffi(obj : JsValue) -> Bool = "webapi_IntersectionObserverEntry" "get_isVisible"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_intersection_ratio_ffi(obj : JsValue) -> Double = "webapi_IntersectionObserverEntry" "get_intersectionRatio"

///|
#cfg(target="wasm-gc")
fn intersection_observer_entry_target_ffi(obj : JsValue) -> Element = "webapi_IntersectionObserverEntry" "get_target"
