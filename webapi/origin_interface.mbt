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
pub impl FromJsAny for Origin with from_js_any(value : JsAny) -> Origin = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TOrigin] Origin::into(self : Origin) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TOrigin] Origin::unsafe_into(self : Origin) -> T = "%identity"

///|
pub impl HasConstructor for Origin with constructor_name() {
  "Origin"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TOrigin + HasConstructor] Origin::try_into(self : Origin) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn origin_new_ffi() -> Origin = "() => new Origin()"

///|
#cfg(target="js")
extern "js" fn origin_from_ffi_js(value : JsValue) -> JsValue = "(value) => Origin.from(value)"

///|
#cfg(target="js")
fn origin_from_ffi(value : JsValue) -> Origin {
  origin_from_ffi_js(value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn origin_opaque_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.opaque"

///|
#cfg(target="js")
fn origin_opaque_ffi(obj : JsValue) -> Bool {
  origin_opaque_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn origin_is_same_origin_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.isSameOrigin(other)"

///|
#cfg(target="js")
fn origin_is_same_origin_ffi(obj : JsValue, other : JsValue) -> Bool {
  origin_is_same_origin_ffi_js(obj, other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn origin_is_same_site_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.isSameSite(other)"

///|
#cfg(target="js")
fn origin_is_same_site_ffi(obj : JsValue, other : JsValue) -> Bool {
  origin_is_same_site_ffi_js(obj, other).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn origin_new_ffi() -> Origin = "webapi_Origin" "new"

///|
#cfg(target="wasm-gc")
fn origin_from_ffi(value : JsValue) -> Origin = "webapi_Origin" "from"

///|
#cfg(target="wasm-gc")
fn origin_opaque_ffi(obj : JsValue) -> Bool = "webapi_Origin" "get_opaque"

///|
#cfg(target="wasm-gc")
fn origin_is_same_origin_ffi(obj : JsValue, other : JsValue) -> Bool = "webapi_Origin" "isSameOrigin"

///|
#cfg(target="wasm-gc")
fn origin_is_same_site_ffi(obj : JsValue, other : JsValue) -> Bool = "webapi_Origin" "isSameSite"
