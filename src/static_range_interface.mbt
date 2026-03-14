// Do not edit. This file is generated.
// MoonBit type: StaticRange
// Specifications: dom.idl

/// [StaticRange](https://developer.mozilla.org/en-US/docs/Web/API/StaticRange)
#external
pub type StaticRange

pub impl TJsValue for StaticRange with to_js(self: StaticRange) -> JsValue = "%identity"

pub impl FromJsAny for StaticRange with from_js_any(value : JsAny) -> StaticRange = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TStaticRange] StaticRange::into(self : StaticRange) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TStaticRange] StaticRange::unsafe_into(self : StaticRange) -> T = "%identity"

pub impl HasConstructor for StaticRange with constructor_name() { "StaticRange" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TStaticRange + HasConstructor] StaticRange::try_into(self : StaticRange) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TStaticRange for StaticRange

pub impl TAbstractRange for StaticRange

pub fn StaticRange::new(init : StaticRangeInit) -> StaticRange {
  static_range_new_ffi(TJsValue::to_js(init))
}

/// [StaticRange](https://developer.mozilla.org/en-US/docs/Web/API/StaticRange) interface.
pub trait TStaticRange: TAbstractRange {

}



#cfg(target="js")
extern "js" fn static_range_new_ffi(init: JsValue) -> StaticRange = "(init) => new StaticRange(init)"

#cfg(target="wasm-gc")
fn static_range_new_ffi(init: JsValue) -> StaticRange = "webapi_StaticRange" "new"