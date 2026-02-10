// Do not edit. This file is generated.
// MoonBit type: CustomStateSet
// Specifications: html.idl

///|
/// [CustomStateSet](https://developer.mozilla.org/en-US/docs/Web/API/CustomStateSet)
#external
pub type CustomStateSet

///|
pub impl TJsValue for CustomStateSet with to_js(self : CustomStateSet) -> JsValue = "%identity"

///|
pub fn[T : TCustomStateSet] CustomStateSet::into(self : CustomStateSet) -> T = "%identity"

///|
pub impl TCustomStateSet for CustomStateSet

///|
/// [CustomStateSet](https://developer.mozilla.org/en-US/docs/Web/API/CustomStateSet) interface.
pub trait TCustomStateSet: TJsValue {}
