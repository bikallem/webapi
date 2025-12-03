// Auto-generated MoonBit bindings for ElementDefinitionOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary ElementDefinitionOptions {
//   DOMString extends;
// };

///|
#external
pub type ElementDefinitionOptions

///|
pub impl TJsValue for ElementDefinitionOptions with to_js(self : ElementDefinitionOptions) -> JsValue = "%identity"

///|
fn element_definition_options_ffi(extends : JsValue) -> ElementDefinitionOptions = "webapi_ElementDefinitionOptions" "new"

///|
pub fn ElementDefinitionOptions::new(
  extends? : String
) -> ElementDefinitionOptions {
  let extends_js = opt_to_js(extends)
  element_definition_options_ffi(extends_js)
}

///|
pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions = "webapi_Dictionary" "empty"