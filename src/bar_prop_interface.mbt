// Do not edit. This file is generated.
// MoonBit type: BarProp
// Specifications: html.idl

/// [BarProp](https://developer.mozilla.org/en-US/docs/Web/API/BarProp)
#external
pub type BarProp

pub impl TJsValue for BarProp with to_js(self: BarProp) -> JsValue = "%identity"

pub fn[T: TBarProp] BarProp::into(self : BarProp) -> T = "%identity"

pub impl TBarProp for BarProp

/// [BarProp](https://developer.mozilla.org/en-US/docs/Web/API/BarProp) interface.
pub trait TBarProp: TJsValue {
  visible(self : Self) -> Bool = _
}

/// [BarProp.visible](https://developer.mozilla.org/en-US/docs/Web/API/BarProp/visible)
impl TBarProp with visible(self : Self) -> Bool {
  bar_prop_visible_ffi(TJsValue::to_js(self))
}