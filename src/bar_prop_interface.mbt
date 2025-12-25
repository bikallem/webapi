// Do not edit. This file is generated.
// MoonBit type: BarProp
// Specifications: html.idl

///|
#external
pub type BarProp

///|
pub impl TJsValue for BarProp with to_js(self : BarProp) -> JsValue = "%identity"

///|
pub fn[T : TBarProp] BarProp::into(self : BarProp) -> T = "%identity"

///|
pub impl TBarProp for BarProp

///|
pub trait TBarProp: TJsValue {
  visible(self : Self) -> Bool = _
}

///|
extern "js" fn bar_prop_visible_ffi(obj : JsValue) -> Bool = "(obj) => obj.visible"

///|
impl TBarProp with visible(self : Self) -> Bool {
  bar_prop_visible_ffi(TJsValue::to_js(self))
}
