fn css_style_declaration_css_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "get_cssText"

///|
fn css_style_declaration_css_text_ffi(obj: JsValue) -> CSSOMString {
  css_style_declaration_css_text_ffi_wasm(obj).unsafe_cast()
}

fn css_style_declaration_set_css_text_ffi(obj: JsValue, css_text: JsValue) -> Unit = "webapi_CSSStyleDeclaration" "set_cssText"

fn css_style_declaration_length_ffi(obj: JsValue) -> UInt = "webapi_CSSStyleDeclaration" "get_length"

fn css_style_declaration_item_ffi_wasm(obj: JsValue, index: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "item"

///|
fn css_style_declaration_item_ffi(obj: JsValue, index: JsValue) -> CSSOMString {
  css_style_declaration_item_ffi_wasm(obj, index).unsafe_cast()
}

fn css_style_declaration_get_property_value_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "getPropertyValue"

///|
fn css_style_declaration_get_property_value_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_value_ffi_wasm(obj, property).unsafe_cast()
}

fn css_style_declaration_get_property_priority_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "getPropertyPriority"

///|
fn css_style_declaration_get_property_priority_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_get_property_priority_ffi_wasm(obj, property).unsafe_cast()
}

fn css_style_declaration_set_property_ffi(obj: JsValue, property: JsValue, value: JsValue, priority: JsValue) -> Unit = "webapi_CSSStyleDeclaration" "setProperty"

fn css_style_declaration_remove_property_ffi_wasm(obj: JsValue, property: JsValue) -> JsValue = "webapi_CSSStyleDeclaration" "removeProperty"

///|
fn css_style_declaration_remove_property_ffi(obj: JsValue, property: JsValue) -> CSSOMString {
  css_style_declaration_remove_property_ffi_wasm(obj, property).unsafe_cast()
}

fn css_style_declaration_parent_rule_ffi(obj: JsValue) -> CSSRule = "webapi_CSSStyleDeclaration" "get_parentRule"