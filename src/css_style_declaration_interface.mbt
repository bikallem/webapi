// Do not edit. This file is generated.
// MoonBit type: CSSStyleDeclaration
// Specifications: cssom.idl

///|
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
pub trait TCSSStyleDeclaration: TJsValue {
  css_text(self : Self) -> CSSOMString = _
  set_css_text(self : Self, css_text : CSSOMString) -> Unit = _
  length(self : Self) -> UInt = _
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
extern "js" fn css_style_declaration_css_text_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.cssText"

///|
impl TCSSStyleDeclaration with css_text(self : Self) -> CSSOMString {
  css_style_declaration_css_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_declaration_set_css_text_ffi(
  obj : JsValue,
  css_text : JsValue,
) -> Unit = "(obj, cssText) => { obj.cssText = css_text; }"

///|
impl TCSSStyleDeclaration with set_css_text(self : Self, css_text : CSSOMString) -> Unit {
  css_style_declaration_set_css_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(css_text),
  )
}

///|
extern "js" fn css_style_declaration_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TCSSStyleDeclaration with length(self : Self) -> UInt {
  css_style_declaration_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_declaration_get_property_value_ffi(
  obj : JsValue,
  property : JsValue,
) -> CSSOMString = "(obj, property) => obj.getPropertyValue(obj, property)"

///|
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
extern "js" fn css_style_declaration_get_property_priority_ffi(
  obj : JsValue,
  property : JsValue,
) -> CSSOMString = "(obj, property) => obj.getPropertyPriority(obj, property)"

///|
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
extern "js" fn css_style_declaration_set_property_ffi(
  obj : JsValue,
  property : JsValue,
  value : JsValue,
  priority : JsValue,
) -> Unit = "(obj, property, value, priority) => obj.setProperty(obj, property, value, priority)"

///|
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
extern "js" fn css_style_declaration_remove_property_ffi(
  obj : JsValue,
  property : JsValue,
) -> CSSOMString = "(obj, property) => obj.removeProperty(obj, property)"

///|
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
extern "js" fn css_style_declaration_parent_rule_ffi(obj : JsValue) -> CSSRule = "(obj) => obj.parentRule"

///|
impl TCSSStyleDeclaration with parent_rule(self : Self) -> CSSRule {
  css_style_declaration_parent_rule_ffi(TJsValue::to_js(self))
}
