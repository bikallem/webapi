// Auto-generated MoonBit bindings for WorkletOptions dictionary
// Do not edit manually

#external
pub type WorkletOptions

pub impl TJsValue for WorkletOptions with to_js(self: WorkletOptions) -> JsValue = "%identity"


fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions = "webapi_WorkletOptions" "new"


pub fn WorkletOptions::new(
  credentials? : RequestCredentials? : RequestCredentials = "same-origin") -> WorkletOptions {
    worklet_options_ffi(
      TJsValue::to_js(credentials)
    )
}


pub fn WorkletOptions::empty() -> WorkletOptions = "webapi_Dictionary" "empty"