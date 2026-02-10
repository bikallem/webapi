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
  root? : &TIntersectionObserverInitNewRoot = JsValue::null(),
  root_margin? : String = "0px",
  scroll_margin? : String = "0px",
  threshold? : &TIntersectionObserverInitNewThreshold = (0 : Double),
  delay? : Int = (0 : Int),
  track_visibility? : Bool = false,
) -> IntersectionObserverInit {
  intersection_observer_init_ffi(
    root.to_js(),
    TJsValue::to_js(root_margin),
    TJsValue::to_js(scroll_margin),
    threshold.to_js(),
    TJsValue::to_js(delay),
    TJsValue::to_js(track_visibility),
  )
}

///|
pub fn IntersectionObserverInit::empty() -> IntersectionObserverInit {
  intersection_observer_init_empty_ffi()
}
