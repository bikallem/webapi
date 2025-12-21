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
  get_property_value(self : Self, property : CSSOMString) -> CSSOMString = _
  get_property_priority(self : Self, property : CSSOMString) -> CSSOMString = _
  set_property(
    self : Self,
    property : CSSOMString,
    value : CSSOMString,
    priority? : CSSOMString,
  ) -> Unit = _
  remove_property(self : Self, property : CSSOMString) -> CSSOMString = _
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
