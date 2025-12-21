///|
#external
pub type CSSStyleProperties

///|
pub impl TJsValue for CSSStyleProperties with to_js(self : CSSStyleProperties) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleProperties] CSSStyleProperties::into(
  self : CSSStyleProperties,
) -> T = "%identity"

///|
pub impl TCSSStyleProperties for CSSStyleProperties

///|
pub impl TCSSStyleDeclaration for CSSStyleProperties

///|
pub trait TCSSStyleProperties: TCSSStyleDeclaration {}
