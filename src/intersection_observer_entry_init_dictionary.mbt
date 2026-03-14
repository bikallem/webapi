// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverEntryInit
// Specifications: intersection-observer.idl

/// [IntersectionObserverEntryInit](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverEntryInit)
#external
pub type IntersectionObserverEntryInit

pub impl TJsValue for IntersectionObserverEntryInit with to_js(self: IntersectionObserverEntryInit) -> JsValue = "%identity"

pub impl FromJsAny for IntersectionObserverEntryInit with from_js_any(value : JsAny) -> IntersectionObserverEntryInit = "%identity"

pub fn IntersectionObserverEntryInit::new(time : DOMHighResTimeStamp, 
root_bounds : DOMRectInit, 
bounding_client_rect : DOMRectInit, 
intersection_rect : DOMRectInit, 
is_intersecting : Bool, 
is_visible : Bool, 
intersection_ratio : Double, 
target : &TElement) -> IntersectionObserverEntryInit {
  intersection_observer_entry_init_ffi(TJsValue::to_js(time), TJsValue::to_js(root_bounds), TJsValue::to_js(bounding_client_rect), TJsValue::to_js(intersection_rect), TJsValue::to_js(is_intersecting), TJsValue::to_js(is_visible), TJsValue::to_js(intersection_ratio), TJsValue::to_js(target))
}

pub fn IntersectionObserverEntryInit::empty() -> IntersectionObserverEntryInit { intersection_observer_entry_init_empty_ffi() }

pub fn IntersectionObserverEntryInit::time(self : IntersectionObserverEntryInit) -> DOMHighResTimeStamp {
  intersection_observer_entry_init_get_time_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::root_bounds(self : IntersectionObserverEntryInit) -> DOMRectInit {
  intersection_observer_entry_init_get_root_bounds_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::bounding_client_rect(self : IntersectionObserverEntryInit) -> DOMRectInit {
  intersection_observer_entry_init_get_bounding_client_rect_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::intersection_rect(self : IntersectionObserverEntryInit) -> DOMRectInit {
  intersection_observer_entry_init_get_intersection_rect_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::is_intersecting(self : IntersectionObserverEntryInit) -> Bool {
  intersection_observer_entry_init_get_is_intersecting_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::is_visible(self : IntersectionObserverEntryInit) -> Bool {
  intersection_observer_entry_init_get_is_visible_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::intersection_ratio(self : IntersectionObserverEntryInit) -> Double {
  intersection_observer_entry_init_get_intersection_ratio_ffi(TJsValue::to_js(self))
}

pub fn IntersectionObserverEntryInit::target(self : IntersectionObserverEntryInit) -> Element {
  intersection_observer_entry_init_get_target_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_ffi(time: JsValue, root_bounds: JsValue, bounding_client_rect: JsValue, intersection_rect: JsValue, is_intersecting: JsValue, is_visible: JsValue, intersection_ratio: JsValue, target: JsValue) -> IntersectionObserverEntryInit = 
#|(time, rootBounds, boundingClientRect, intersectionRect, isIntersecting, isVisible, intersectionRatio, target) => {
#|  const obj = {};
#|  if (time !== undefined) obj.time = time;
#|  if (rootBounds !== undefined) obj.rootBounds = rootBounds;
#|  if (boundingClientRect !== undefined) obj.boundingClientRect = boundingClientRect;
#|  if (intersectionRect !== undefined) obj.intersectionRect = intersectionRect;
#|  if (isIntersecting !== undefined) obj.isIntersecting = isIntersecting;
#|  if (isVisible !== undefined) obj.isVisible = isVisible;
#|  if (intersectionRatio !== undefined) obj.intersectionRatio = intersectionRatio;
#|  if (target !== undefined) obj.target = target;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_empty_ffi() -> IntersectionObserverEntryInit = "() => {}"

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.time"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_time_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  intersection_observer_entry_init_get_time_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_root_bounds_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rootBounds"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_root_bounds_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_root_bounds_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_bounding_client_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.boundingClientRect"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_bounding_client_rect_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_bounding_client_rect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_intersection_rect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRect"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_intersection_rect_ffi(obj: JsValue) -> DOMRectInit {
  intersection_observer_entry_init_get_intersection_rect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_is_intersecting_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isIntersecting"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_is_intersecting_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_init_get_is_intersecting_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_is_visible_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isVisible"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_is_visible_ffi(obj: JsValue) -> Bool {
  intersection_observer_entry_init_get_is_visible_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_intersection_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.intersectionRatio"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_intersection_ratio_ffi(obj: JsValue) -> Double {
  intersection_observer_entry_init_get_intersection_ratio_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn intersection_observer_entry_init_get_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn intersection_observer_entry_init_get_target_ffi(obj: JsValue) -> Element {
  intersection_observer_entry_init_get_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_ffi(time: JsValue, root_bounds: JsValue, bounding_client_rect: JsValue, intersection_rect: JsValue, is_intersecting: JsValue, is_visible: JsValue, intersection_ratio: JsValue, target: JsValue) -> IntersectionObserverEntryInit = "webapi_IntersectionObserverEntryInit" "new"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_empty_ffi() -> IntersectionObserverEntryInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_time_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_IntersectionObserverEntryInit" "get_time"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_root_bounds_ffi(obj: JsValue) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_rootBounds"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_bounding_client_rect_ffi(obj: JsValue) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_boundingClientRect"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_intersection_rect_ffi(obj: JsValue) -> DOMRectInit = "webapi_IntersectionObserverEntryInit" "get_intersectionRect"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_is_intersecting_ffi(obj: JsValue) -> Bool = "webapi_IntersectionObserverEntryInit" "get_isIntersecting"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_is_visible_ffi(obj: JsValue) -> Bool = "webapi_IntersectionObserverEntryInit" "get_isVisible"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_intersection_ratio_ffi(obj: JsValue) -> Double = "webapi_IntersectionObserverEntryInit" "get_intersectionRatio"

#cfg(target="wasm-gc")
fn intersection_observer_entry_init_get_target_ffi(obj: JsValue) -> Element = "webapi_IntersectionObserverEntryInit" "get_target"