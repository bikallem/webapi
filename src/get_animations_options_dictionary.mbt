// Do not edit. This file is generated.
// MoonBit type: GetAnimationsOptions
// Specifications: web-animations.idl

/// [GetAnimationsOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetAnimationsOptions)
#external
pub type GetAnimationsOptions

pub impl TJsValue for GetAnimationsOptions with to_js(self: GetAnimationsOptions) -> JsValue = "%identity"

pub impl FromJsAny for GetAnimationsOptions with from_js_any(value : JsAny) -> GetAnimationsOptions = "%identity"

pub fn GetAnimationsOptions::new(subtree? : Bool, 
pseudo_element? : CSSOMString) -> GetAnimationsOptions {
  get_animations_options_ffi(opt_to_js(subtree), opt_to_js(pseudo_element))
}

pub fn GetAnimationsOptions::empty() -> GetAnimationsOptions { get_animations_options_empty_ffi() }

pub fn GetAnimationsOptions::subtree(self : GetAnimationsOptions) -> Bool? {
  get_animations_options_get_subtree_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn GetAnimationsOptions::pseudo_element(self : GetAnimationsOptions) -> CSSOMString? {
  get_animations_options_get_pseudo_element_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn get_animations_options_ffi(subtree: JsValue, pseudo_element: JsValue) -> GetAnimationsOptions = 
#|(subtree, pseudoElement) => {
#|  const obj = {};
#|  if (subtree !== undefined) obj.subtree = subtree;
#|  if (pseudoElement !== undefined) obj.pseudoElement = pseudoElement;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn get_animations_options_empty_ffi() -> GetAnimationsOptions = "() => {}"

#cfg(target="js")
extern "js" fn get_animations_options_get_subtree_ffi(obj: JsValue) -> JsValue = "(obj) => obj.subtree"

#cfg(target="js")
extern "js" fn get_animations_options_get_pseudo_element_ffi(obj: JsValue) -> JsValue = "(obj) => obj.pseudoElement"

#cfg(target="wasm-gc")
fn get_animations_options_ffi(subtree: JsValue, pseudo_element: JsValue) -> GetAnimationsOptions = "webapi_GetAnimationsOptions" "new"

#cfg(target="wasm-gc")
fn get_animations_options_empty_ffi() -> GetAnimationsOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn get_animations_options_get_subtree_ffi(obj: JsValue) -> JsValue = "webapi_GetAnimationsOptions" "get_subtree"

#cfg(target="wasm-gc")
fn get_animations_options_get_pseudo_element_ffi(obj: JsValue) -> JsValue = "webapi_GetAnimationsOptions" "get_pseudoElement"