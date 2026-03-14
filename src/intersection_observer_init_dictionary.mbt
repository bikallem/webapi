// Do not edit. This file is generated.
// MoonBit type: IntersectionObserverInit
// Specifications: intersection-observer.idl

///|
/// [IntersectionObserverInit](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserverInit)
#external
pub type IntersectionObserverInit

///|
pub impl TJsValue for IntersectionObserverInit with to_js(
  self : IntersectionObserverInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverInit with from_js_any(value : JsAny) -> IntersectionObserverInit = "%identity"

///|
pub(open) trait TIntersectionObserverInitNewRoot: TJsValue {}

///|
pub impl TIntersectionObserverInitNewRoot for Element

///|
pub impl TIntersectionObserverInitNewRoot for Document

///|
pub(open) trait TIntersectionObserverInitNewThreshold: TJsValue {}

///|
pub impl TIntersectionObserverInitNewThreshold for Double

///|
pub impl TIntersectionObserverInitNewThreshold for Array[Double]

///|
pub fn IntersectionObserverInit::new(
  root? : &TIntersectionObserverInitNewRoot,
  root_margin? : String,
  scroll_margin? : String,
  threshold? : &TIntersectionObserverInitNewThreshold,
  delay? : Int,
  track_visibility? : Bool,
) -> IntersectionObserverInit {
  intersection_observer_init_ffi(
    match root {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(root_margin),
    opt_to_js(scroll_margin),
    match threshold {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(delay),
    opt_to_js(track_visibility),
  )
}

///|
pub fn IntersectionObserverInit::empty() -> IntersectionObserverInit {
  intersection_observer_init_empty_ffi()
}

///|
pub(open) trait TIntersectionObserverInitGetRoot: TJsValue {}

///|
pub impl TIntersectionObserverInitGetRoot for Element

///|
pub impl TIntersectionObserverInitGetRoot for Document

///|
#external
pub type IntersectionObserverInitGetRoot

///|
pub impl TJsValue for IntersectionObserverInitGetRoot with to_js(
  self : IntersectionObserverInitGetRoot,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverInitGetRoot with from_js_any(
  value : JsAny,
) -> IntersectionObserverInitGetRoot = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIntersectionObserverInitGetRoot + FromJsAny] IntersectionObserverInitGetRoot::into(
  self : IntersectionObserverInitGetRoot,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetRoot + FromJsAny] IntersectionObserverInitGetRoot::unsafe_into(
  self : IntersectionObserverInitGetRoot,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetRoot] IntersectionObserverInitGetRoot::from(
  value : T,
) -> IntersectionObserverInitGetRoot = "%identity"

///|
pub impl TIntersectionObserverInitGetRoot for IntersectionObserverInitGetRoot

///|
pub(open) trait TIntersectionObserverInitGetThreshold: TJsValue {}

///|
pub impl TIntersectionObserverInitGetThreshold for Double

///|
pub impl TIntersectionObserverInitGetThreshold for Array[Double]

///|
#external
pub type IntersectionObserverInitGetThreshold

///|
pub impl TJsValue for IntersectionObserverInitGetThreshold with to_js(
  self : IntersectionObserverInitGetThreshold,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for IntersectionObserverInitGetThreshold with from_js_any(
  value : JsAny,
) -> IntersectionObserverInitGetThreshold = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIntersectionObserverInitGetThreshold + FromJsAny] IntersectionObserverInitGetThreshold::into(
  self : IntersectionObserverInitGetThreshold,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetThreshold + FromJsAny] IntersectionObserverInitGetThreshold::unsafe_into(
  self : IntersectionObserverInitGetThreshold,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetThreshold] IntersectionObserverInitGetThreshold::from(
  value : T,
) -> IntersectionObserverInitGetThreshold = "%identity"

///|
pub impl TIntersectionObserverInitGetThreshold for IntersectionObserverInitGetThreshold

///|
pub fn IntersectionObserverInit::root(
  self : IntersectionObserverInit,
) -> IntersectionObserverInitGetRoot? {
  intersection_observer_init_get_root_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn IntersectionObserverInit::root_margin(
  self : IntersectionObserverInit,
) -> String? {
  intersection_observer_init_get_root_margin_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IntersectionObserverInit::scroll_margin(
  self : IntersectionObserverInit,
) -> String? {
  intersection_observer_init_get_scroll_margin_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IntersectionObserverInit::threshold(
  self : IntersectionObserverInit,
) -> IntersectionObserverInitGetThreshold? {
  intersection_observer_init_get_threshold_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn IntersectionObserverInit::delay(self : IntersectionObserverInit) -> Int? {
  intersection_observer_init_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn IntersectionObserverInit::track_visibility(
  self : IntersectionObserverInit,
) -> Bool? {
  intersection_observer_init_get_track_visibility_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_ffi(
  root : JsValue,
  root_margin : JsValue,
  scroll_margin : JsValue,
  threshold : JsValue,
  delay : JsValue,
  track_visibility : JsValue,
) -> IntersectionObserverInit =
  #|(root, rootMargin, scrollMargin, threshold, delay, trackVisibility) => {
  #|  const obj = {};
  #|  if (root !== undefined) obj.root = root;
  #|  if (rootMargin !== undefined) obj.rootMargin = rootMargin;
  #|  if (scrollMargin !== undefined) obj.scrollMargin = scrollMargin;
  #|  if (threshold !== undefined) obj.threshold = threshold;
  #|  if (delay !== undefined) obj.delay = delay;
  #|  if (trackVisibility !== undefined) obj.trackVisibility = trackVisibility;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_empty_ffi() -> IntersectionObserverInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_root_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.root"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_root_margin_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rootMargin"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_scroll_margin_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.scrollMargin"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_threshold_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.threshold"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_delay_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.delay"

///|
#cfg(target="js")
extern "js" fn intersection_observer_init_get_track_visibility_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.trackVisibility"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_ffi(
  root : JsValue,
  root_margin : JsValue,
  scroll_margin : JsValue,
  threshold : JsValue,
  delay : JsValue,
  track_visibility : JsValue,
) -> IntersectionObserverInit = "webapi_IntersectionObserverInit" "new"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_empty_ffi() -> IntersectionObserverInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_root_ffi(obj : JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_root"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_root_margin_ffi(obj : JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_rootMargin"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_scroll_margin_ffi(obj : JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_scrollMargin"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_threshold_ffi(obj : JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_threshold"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_delay_ffi(obj : JsValue) -> JsValue = "webapi_IntersectionObserverInit" "get_delay"

///|
#cfg(target="wasm-gc")
fn intersection_observer_init_get_track_visibility_ffi(
  obj : JsValue,
) -> JsValue = "webapi_IntersectionObserverInit" "get_trackVisibility"
