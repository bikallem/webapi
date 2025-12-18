// Auto-generated MoonBit bindings for ElementDefinitionOptions dictionary
// Do not edit manually

#external
pub type ElementDefinitionOptions

pub impl TJsValue for ElementDefinitionOptions with to_js(self: ElementDefinitionOptions) -> JsValue = "%identity"


fn element_definition_options_ffi(extends : JsValue) -> ElementDefinitionOptions = "webapi_ElementDefinitionOptions" "new"


pub fn ElementDefinitionOptions::new(
  extends? : String) -> ElementDefinitionOptions {
    element_definition_options_ffi(
      opt_to_js(extends)
    )
}


pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions = "webapi_Dictionary" "empty"