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
pub(open) trait TIntersectionObserverInitNewRoot {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIntersectionObserverInitNewRoot for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TIntersectionObserverInitNewRoot for Document with to_js(
  self : Document,
) -> JsValue = "%identity"

///|
pub(open) trait TIntersectionObserverInitNewThreshold {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIntersectionObserverInitNewThreshold for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TIntersectionObserverInitNewThreshold for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

///|
pub fn IntersectionObserverInit::new(
  root? : &TIntersectionObserverInitNewRoot,
  root_margin? : String = "0px",
  scroll_margin? : String = "0px",
  threshold? : &TIntersectionObserverInitNewThreshold,
  delay? : Int = (0 : Int),
  track_visibility? : Bool = false,
) -> IntersectionObserverInit {
  intersection_observer_init_ffi(
    match root {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    TJsValue::to_js(root_margin),
    TJsValue::to_js(scroll_margin),
    match threshold {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    TJsValue::to_js(delay),
    TJsValue::to_js(track_visibility),
  )
}

///|
pub fn IntersectionObserverInit::empty() -> IntersectionObserverInit {
  intersection_observer_init_empty_ffi()
}

///|
pub(open) trait TIntersectionObserverInitGetRoot {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIntersectionObserverInitGetRoot for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TIntersectionObserverInitGetRoot for Document with to_js(
  self : Document,
) -> JsValue = "%identity"

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
pub fn[T : TIntersectionObserverInitGetRoot + FromJsAny] IntersectionObserverInitGetRoot::into(
  self : IntersectionObserverInitGetRoot,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetRoot] IntersectionObserverInitGetRoot::from(
  value : T,
) -> IntersectionObserverInitGetRoot = "%identity"

///|
pub impl TIntersectionObserverInitGetRoot for IntersectionObserverInitGetRoot with to_js(
  self : IntersectionObserverInitGetRoot,
) -> JsValue = "%identity"

///|
pub(open) trait TIntersectionObserverInitGetThreshold {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIntersectionObserverInitGetThreshold for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TIntersectionObserverInitGetThreshold for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

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
pub fn[T : TIntersectionObserverInitGetThreshold + FromJsAny] IntersectionObserverInitGetThreshold::into(
  self : IntersectionObserverInitGetThreshold,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIntersectionObserverInitGetThreshold] IntersectionObserverInitGetThreshold::from(
  value : T,
) -> IntersectionObserverInitGetThreshold = "%identity"

///|
pub impl TIntersectionObserverInitGetThreshold for IntersectionObserverInitGetThreshold with to_js(
  self : IntersectionObserverInitGetThreshold,
) -> JsValue = "%identity"

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
