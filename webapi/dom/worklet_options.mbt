// Auto-generated MoonBit bindings for WorkletOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary WorkletOptions {
//   RequestCredentials credentials = "same-origin";
// };

///|
#external
pub type WorkletOptions

///|
pub impl TJsValue for WorkletOptions with to_js(self : WorkletOptions) -> JsValue = "%identity"

///|
fn worklet_options_ffi(credentials : JsValue) -> WorkletOptions = "webapi_WorkletOptions" "new"

///|
pub fn WorkletOptions::new(
  credentials? : JsValue
) -> WorkletOptions {
  let credentials_js = opt_to_js(credentials)
  worklet_options_ffi(credentials_js)
}

///|
pub fn WorkletOptions::empty() -> WorkletOptions = "webapi_Dictionary" "empty"