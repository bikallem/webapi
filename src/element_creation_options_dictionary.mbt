// Do not edit. This file is generated.
// MoonBit type: ElementCreationOptions
// Specifications: dom.idl

/// [ElementCreationOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementCreationOptions)
#external
pub type ElementCreationOptions

pub impl TJsValue for ElementCreationOptions with to_js(self: ElementCreationOptions) -> JsValue = "%identity"

pub impl FromJsAny for ElementCreationOptions with from_js_any(value : JsAny) -> ElementCreationOptions = "%identity"

pub fn ElementCreationOptions::new(custom_element_registry? : &TCustomElementRegistry, 
is_? : String) -> ElementCreationOptions {
  element_creation_options_ffi(opt_to_js(custom_element_registry), opt_to_js(is_))
}

pub fn ElementCreationOptions::empty() -> ElementCreationOptions { element_creation_options_empty_ffi() }

pub fn ElementCreationOptions::custom_element_registry(self : ElementCreationOptions) -> CustomElementRegistry? {
  element_creation_options_get_custom_element_registry_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ElementCreationOptions::is_(self : ElementCreationOptions) -> String? {
  element_creation_options_get_is_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn element_creation_options_ffi(custom_element_registry: JsValue, is_: JsValue) -> ElementCreationOptions = 
#|(customElementRegistry, is) => {
#|  const obj = {};
#|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
#|  if (is !== undefined) obj.is = is;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn element_creation_options_empty_ffi() -> ElementCreationOptions = "() => {}"

#cfg(target="js")
extern "js" fn element_creation_options_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

#cfg(target="js")
extern "js" fn element_creation_options_get_is_ffi(obj: JsValue) -> JsValue = "(obj) => obj.is"

#cfg(target="wasm-gc")
fn element_creation_options_ffi(custom_element_registry: JsValue, is_: JsValue) -> ElementCreationOptions = "webapi_ElementCreationOptions" "new"

#cfg(target="wasm-gc")
fn element_creation_options_empty_ffi() -> ElementCreationOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn element_creation_options_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "webapi_ElementCreationOptions" "get_customElementRegistry"

#cfg(target="wasm-gc")
fn element_creation_options_get_is_ffi(obj: JsValue) -> JsValue = "webapi_ElementCreationOptions" "get_is"