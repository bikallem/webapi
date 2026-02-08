///|
extern "js" fn css_style_declaration_css_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cssText"

///|
extern "js" fn css_style_declaration_set_css_text_ffi(
  obj : JsValue,
  css_text : JsValue,
) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

///|
extern "js" fn css_style_declaration_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn css_style_declaration_get_property_value_ffi(
  obj : JsValue,
  property : JsValue,
) -> JsValue = "(obj, property) => obj.getPropertyValue(property)"

///|
extern "js" fn css_style_declaration_get_property_priority_ffi(
  obj : JsValue,
  property : JsValue,
) -> JsValue = "(obj, property) => obj.getPropertyPriority(property)"

///|
extern "js" fn css_style_declaration_set_property_ffi(
  obj : JsValue,
  property : JsValue,
  value : JsValue,
  priority : JsValue,
) -> Unit = "(obj, property, value, priority) => obj.setProperty(property, value, priority)"

///|
extern "js" fn css_style_declaration_remove_property_ffi(
  obj : JsValue,
  property : JsValue,
) -> JsValue = "(obj, property) => obj.removeProperty(property)"

///|
extern "js" fn css_style_declaration_parent_rule_ffi(obj : JsValue) -> JsValue = "(obj) => obj.parentRule"
