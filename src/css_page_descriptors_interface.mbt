///|
#external
pub type CSSPageDescriptors

///|
pub impl TJsValue for CSSPageDescriptors with to_js(self : CSSPageDescriptors) -> JsValue = "%identity"

///|
pub fn[T : TCSSPageDescriptors] CSSPageDescriptors::into(
  self : CSSPageDescriptors,
) -> T = "%identity"

///|
pub impl TCSSPageDescriptors for CSSPageDescriptors

///|
pub impl TCSSStyleDeclaration for CSSPageDescriptors

///|
pub trait TCSSPageDescriptors: TCSSStyleDeclaration {}
