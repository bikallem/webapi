// Do not edit. This file is generated.
// MoonBit type: Origin
// Specifications: html.idl

///|
/// [Origin](https://developer.mozilla.org/en-US/docs/Web/API/Origin)
#external
pub type Origin

///|
pub impl TJsValue for Origin with to_js(self : Origin) -> JsValue = "%identity"

///|
pub fn[T : TOrigin] Origin::into(self : Origin) -> T = "%identity"

///|
pub impl TOrigin for Origin

///|
pub fn Origin::new() -> Origin {
  origin_new_ffi()
}

///|
/// [Origin](https://developer.mozilla.org/en-US/docs/Web/API/Origin) interface.
pub trait TOrigin: TJsValue {
  opaque_(self : Self) -> Bool = _
  is_same_origin(self : Self, other : &TOrigin) -> Bool = _
  is_same_site(self : Self, other : &TOrigin) -> Bool = _
}

///|
/// [Origin.from](https://developer.mozilla.org/en-US/docs/Web/API/Origin/from)
pub fn Origin::from(value : JsValue) -> Origin {
  origin_from_ffi(TJsValue::to_js(value))
}

///|
/// [Origin.opaque](https://developer.mozilla.org/en-US/docs/Web/API/Origin/opaque)
impl TOrigin with opaque_(self : Self) -> Bool {
  origin_opaque_ffi(TJsValue::to_js(self))
}

///|
/// [Origin.isSameOrigin](https://developer.mozilla.org/en-US/docs/Web/API/Origin/isSameOrigin)
impl TOrigin with is_same_origin(self : Self, other : &TOrigin) -> Bool {
  origin_is_same_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

///|
/// [Origin.isSameSite](https://developer.mozilla.org/en-US/docs/Web/API/Origin/isSameSite)
impl TOrigin with is_same_site(self : Self, other : &TOrigin) -> Bool {
  origin_is_same_site_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}
