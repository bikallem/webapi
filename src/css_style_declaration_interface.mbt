// Do not edit. This file is generated.
// MoonBit type: CSSStyleDeclaration
// Specifications: cssom.idl

///|
/// [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration)
#external
pub type CSSStyleDeclaration

///|
pub impl TJsValue for CSSStyleDeclaration with to_js(self : CSSStyleDeclaration) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleDeclaration] CSSStyleDeclaration::into(
  self : CSSStyleDeclaration,
) -> T = "%identity"

///|
pub impl TCSSStyleDeclaration for CSSStyleDeclaration

///|
/// [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration) interface.
pub trait TCSSStyleDeclaration: TJsValue {
  css_text(self : Self) -> CSSOMString = _
  set_css_text(self : Self, css_text : CSSOMString) -> Unit = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> CSSOMString = _
  get_property_value(self : Self, property : CSSOMString) -> CSSOMString = _
  get_property_priority(self : Self, property : CSSOMString) -> CSSOMString = _
  set_property(
    self : Self,
    property : CSSOMString,
    value : CSSOMString,
    priority? : CSSOMString,
  ) -> Unit = _
  remove_property(self : Self, property : CSSOMString) -> CSSOMString = _
  parent_rule(self : Self) -> CSSRule = _
}

///|
/// [CSSStyleDeclaration.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/cssText)
impl TCSSStyleDeclaration with css_text(self : Self) -> CSSOMString {
  css_style_declaration_css_text_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleDeclaration.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/cssText)
impl TCSSStyleDeclaration with set_css_text(self : Self, css_text : CSSOMString) -> Unit {
  css_style_declaration_set_css_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(css_text),
  )
}

///|
/// [CSSStyleDeclaration.length](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/length)
impl TCSSStyleDeclaration with length(self : Self) -> UInt {
  css_style_declaration_length_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleDeclaration.item](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/item)
impl TCSSStyleDeclaration with item(self : Self, index : UInt) -> CSSOMString {
  css_style_declaration_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [CSSStyleDeclaration.getPropertyValue](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
impl TCSSStyleDeclaration with get_property_value(
  self : Self,
  property : CSSOMString,
) -> CSSOMString {
  css_style_declaration_get_property_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(property),
  )
}

///|
/// [CSSStyleDeclaration.getPropertyPriority](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
impl TCSSStyleDeclaration with get_property_priority(
  self : Self,
  property : CSSOMString,
) -> CSSOMString {
  css_style_declaration_get_property_priority_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(property),
  )
}

///|
/// [CSSStyleDeclaration.setProperty](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/setProperty)
impl TCSSStyleDeclaration with set_property(
  self : Self,
  property : CSSOMString,
  value : CSSOMString,
  priority? : CSSOMString = "",
) -> Unit {
  css_style_declaration_set_property_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(property),
    TJsValue::to_js(value),
    TJsValue::to_js(priority),
  )
}

///|
/// [CSSStyleDeclaration.removeProperty](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/removeProperty)
impl TCSSStyleDeclaration with remove_property(
  self : Self,
  property : CSSOMString,
) -> CSSOMString {
  css_style_declaration_remove_property_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(property),
  )
}

///|
/// [CSSStyleDeclaration.parentRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/parentRule)
impl TCSSStyleDeclaration with parent_rule(self : Self) -> CSSRule {
  css_style_declaration_parent_rule_ffi(TJsValue::to_js(self))
}
