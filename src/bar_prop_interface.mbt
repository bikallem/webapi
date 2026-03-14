// Do not edit. This file is generated.
// MoonBit type: BarProp
// Specifications: html.idl

///|
/// [BarProp](https://developer.mozilla.org/en-US/docs/Web/API/BarProp)
#external
pub type BarProp

///|
pub impl TJsValue for BarProp with to_js(self : BarProp) -> JsValue = "%identity"

///|
pub impl FromJsAny for BarProp with from_js_any(value : JsAny) -> BarProp = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TBarProp] BarProp::into(self : BarProp) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TBarProp] BarProp::unsafe_into(self : BarProp) -> T = "%identity"

///|
pub impl HasConstructor for BarProp with constructor_name() {
  "BarProp"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TBarProp + HasConstructor] BarProp::try_into(self : BarProp) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TBarProp for BarProp

///|
/// [BarProp](https://developer.mozilla.org/en-US/docs/Web/API/BarProp) interface.
pub trait TBarProp: TJsValue {
  visible(self : Self) -> Bool = _
}

///|
/// [BarProp.visible](https://developer.mozilla.org/en-US/docs/Web/API/BarProp/visible)
impl TBarProp with visible(self : Self) -> Bool {
  bar_prop_visible_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn bar_prop_visible_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visible"

///|
#cfg(target="js")
fn bar_prop_visible_ffi(obj : JsValue) -> Bool {
  bar_prop_visible_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn bar_prop_visible_ffi(obj : JsValue) -> Bool = "webapi_BarProp" "get_visible"
