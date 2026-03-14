// Do not edit. This file is generated.
// MoonBit type: CSSStyleDeclaration
// Specifications: cssom.idl

/// [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration)
#external
pub type CSSStyleDeclaration

pub impl TJsValue for CSSStyleDeclaration with to_js(self: CSSStyleDeclaration) -> JsValue = "%identity"

pub impl FromJsAny for CSSStyleDeclaration with from_js_any(value : JsAny) -> CSSStyleDeclaration = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCSSStyleDeclaration] CSSStyleDeclaration::into(self : CSSStyleDeclaration) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCSSStyleDeclaration] CSSStyleDeclaration::unsafe_into(self : CSSStyleDeclaration) -> T = "%identity"

pub impl HasConstructor for CSSStyleDeclaration with constructor_name() { "CSSStyleDeclaration" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSStyleDeclaration + HasConstructor] CSSStyleDeclaration::try_into(self : CSSStyleDeclaration) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TCSSStyleDeclaration for CSSStyleDeclaration

/// [CSSStyleDeclaration](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration) interface.
pub trait TCSSStyleDeclaration: TJsValue {
  css_text(self : Self) -> CSSOMString = _
  set_css_text(self : Self, css_text : CSSOMString) -> Unit = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> CSSOMString = _
  get_property_value(self : Self, property : CSSOMString) -> CSSOMString = _
  get_property_priority(self : Self, property : CSSOMString) -> CSSOMString = _
  set_property(self : Self, property : CSSOMString, value : CSSOMString, priority? : CSSOMString) -> Unit = _
  remove_property(self : Self, property : CSSOMString) -> CSSOMString = _
  parent_rule(self : Self) -> CSSRule = _
}

/// [CSSStyleDeclaration.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/cssText)
impl TCSSStyleDeclaration with css_text(self : Self) -> CSSOMString {
  css_style_declaration_css_text_ffi(TJsValue::to_js(self))
}

/// [CSSStyleDeclaration.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/cssText)
impl TCSSStyleDeclaration with set_css_text(self : Self, 
css_text : CSSOMString) -> Unit {
  css_style_declaration_set_css_text_ffi(TJsValue::to_js(self), TJsValue::to_js(css_text))
}

/// [CSSStyleDeclaration.length](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/length)
impl TCSSStyleDeclaration with length(self : Self) -> UInt {
  css_style_declaration_length_ffi(TJsValue::to_js(self))
}

/// [CSSStyleDeclaration.item](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/item)
impl TCSSStyleDeclaration with item(self : Self, 
index : UInt) -> CSSOMString {
  css_style_declaration_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

/// [CSSStyleDeclaration.getPropertyValue](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
impl TCSSStyleDeclaration with get_property_value(self : Self, 
property : CSSOMString) -> CSSOMString {
  css_style_declaration_get_property_value_ffi(TJsValue::to_js(self), TJsValue::to_js(property))
}

/// [CSSStyleDeclaration.getPropertyPriority](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
impl TCSSStyleDeclaration with get_property_priority(self : Self, 
property : CSSOMString) -> CSSOMString {
  css_style_declaration_get_property_priority_ffi(TJsValue::to_js(self), TJsValue::to_js(property))
}

/// [CSSStyleDeclaration.setProperty](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/setProperty)
impl TCSSStyleDeclaration with set_property(self : Self, 
property : CSSOMString, 
value : CSSOMString, 
priority? : CSSOMString) -> Unit {
  css_style_declaration_set_property_ffi(TJsValue::to_js(self), TJsValue::to_js(property), TJsValue::to_js(value), opt_to_js(priority))
}

/// [CSSStyleDeclaration.removeProperty](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/removeProperty)
impl TCSSStyleDeclaration with remove_property(self : Self, 
property : CSSOMString) -> CSSOMString {
  css_style_declaration_remove_property_ffi(TJsValue::to_js(self), TJsValue::to_js(property))
}

/// [CSSStyleDeclaration.parentRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration/parentRule)
impl TCSSStyleDeclaration with parent_rule(self : Self) -> CSSRule {
  css_style_declaration_parent_rule_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn css_style_declaration_css_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cssText"

///|
#cfg(target="js")
fn css_style_declaration_css_text_ffi(obj: JsValue) -> CSSOMString {
  css_style_declaration_css_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_set_css_text_ffi(obj: JsValue, css_text: JsValue) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

#cfg(target="js")
extern "js" fn css_style_declaration_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn css_style_declaration_length_ffi(obj: JsValue) -> UInt {
  css_style_declaration_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_item_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
fn css_style_declaration_item_ffi(obj: JsValue, index: JsValue) -> CSSOMString {
  css_style_declaration_item_ffi_js(obj, index).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_get_property_value_ffi_js(obj: JsValue, property: JsValue) -> JsValue = "(obj, property) => obj.getPropertyValue(property)"

///|
#cfg(target="js")
fn css_style_declaration_get_property_value_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_value_ffi_js(obj, property).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_get_property_priority_ffi_js(obj: JsValue, property: JsValue) -> JsValue = "(obj, property) => obj.getPropertyPriority(property)"

///|
#cfg(target="js")
fn css_style_declaration_get_property_priority_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_priority_ffi_js(obj, property).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_set_property_ffi(obj: JsValue, property: JsValue, value: JsValue, priority: JsValue) -> Unit = "(obj, property, value, priority) => obj.setProperty(property, value, priority)"

#cfg(target="js")
extern "js" fn css_style_declaration_remove_property_ffi_js(obj: JsValue, property: JsValue) -> JsValue = "(obj, property) => obj.removeProperty(property)"

///|
#cfg(target="js")
fn css_style_declaration_remove_property_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_remove_property_ffi_js(obj, property).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_style_declaration_parent_rule_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.parentRule"

///|
#cfg(target="js")
fn css_style_declaration_parent_rule_ffi(obj: JsValue) -> CSSRule {
  css_style_declaration_parent_rule_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_css_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "get_cssText"

///|
#cfg(target="wasm-gc")
fn css_style_declaration_css_text_ffi(obj: JsValue) -> CSSOMString {
  css_style_declaration_css_text_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_set_css_text_ffi(obj: JsValue, css_text: JsValue) -> Unit = "webapi_CSSStyleDeclaration" "set_cssText"

#cfg(target="wasm-gc")
fn css_style_declaration_length_ffi(obj: JsValue) -> UInt = "webapi_CSSStyleDeclaration" "get_length"

#cfg(target="wasm-gc")
fn css_style_declaration_item_ffi_wasm(obj: JsValue, index: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "item"

///|
#cfg(target="wasm-gc")
fn css_style_declaration_item_ffi(obj: JsValue, index: JsValue) -> CSSOMString {
  css_style_declaration_item_ffi_wasm(obj, index).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_get_property_value_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "getPropertyValue"

///|
#cfg(target="wasm-gc")
fn css_style_declaration_get_property_value_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_value_ffi_wasm(obj, property).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_get_property_priority_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "getPropertyPriority"

///|
#cfg(target="wasm-gc")
fn css_style_declaration_get_property_priority_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_priority_ffi_wasm(obj, property).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_set_property_ffi(obj: JsValue, property: JsValue, value: JsValue, priority: JsValue) -> Unit = "webapi_CSSStyleDeclaration" "setProperty"

#cfg(target="wasm-gc")
fn css_style_declaration_remove_property_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "removeProperty"

///|
#cfg(target="wasm-gc")
fn css_style_declaration_remove_property_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_remove_property_ffi_wasm(obj, property).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_style_declaration_parent_rule_ffi(obj: JsValue) -> CSSRule = "webapi_CSSStyleDeclaration" "get_parentRule"