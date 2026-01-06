// Do not edit. This file is generated.
// MoonBit type: Origin
// Specifications: html.idl

///|
#external
pub type Origin

///|
pub impl TJsValue for Origin with to_js(self : Origin) -> JsValue = "%identity"

///|
pub fn[T : TOrigin] Origin::into(self : Origin) -> T = "%identity"

///|
pub impl TOrigin for Origin

///|
extern "js" fn origin_new_ffi() -> Origin = "() => new Origin()"

///|
pub fn Origin::new() -> Origin {
  origin_new_ffi()
}

///|
pub trait TOrigin: TJsValue {
  opaque_(self : Self) -> Bool = _
  is_same_origin(self : Self, other : &TOrigin) -> Bool = _
  is_same_site(self : Self, other : &TOrigin) -> Bool = _
}

///|
extern "js" fn origin_from_ffi(value : JsValue) -> Origin = "(value) => Origin.from(value)"

///|
pub fn Origin::from(value : JsValue) -> Origin {
  origin_from_ffi(TJsValue::to_js(value))
}

///|
extern "js" fn origin_opaque_ffi(obj : JsValue) -> Bool = "(obj) => obj.opaque"

///|
impl TOrigin with opaque_(self : Self) -> Bool {
  origin_opaque_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn origin_is_same_origin_ffi(
  obj : JsValue,
  other : JsValue,
) -> Bool = "(obj, other) => obj.isSameOrigin(other)"

///|
impl TOrigin with is_same_origin(self : Self, other : &TOrigin) -> Bool {
  origin_is_same_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}

///|
extern "js" fn origin_is_same_site_ffi(obj : JsValue, other : JsValue) -> Bool = "(obj, other) => obj.isSameSite(other)"

///|
impl TOrigin with is_same_site(self : Self, other : &TOrigin) -> Bool {
  origin_is_same_site_ffi(TJsValue::to_js(self), TJsValue::to_js(other))
}
