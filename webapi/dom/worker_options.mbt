// Auto-generated MoonBit bindings for WorkerOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary WorkerOptions {
//   DOMString name = "";
//   WorkerType type = "classic";
//   RequestCredentials credentials = "same-origin"; // credentials is only used if type is "module"
// };

///|
#external
pub type WorkerOptions

///|
pub impl TJsValue for WorkerOptions with to_js(self : WorkerOptions) -> JsValue = "%identity"

///|
fn worker_options_ffi(name : JsValue, type_ : JsValue, credentials : JsValue) -> WorkerOptions = "webapi_WorkerOptions" "new"

///|
pub fn WorkerOptions::new(
  name? : String = "",
  type_? : JsValue,
  credentials? : JsValue
) -> WorkerOptions {
  let type__js = opt_to_js(type_)
  let credentials_js = opt_to_js(credentials)
  worker_options_ffi(TJsValue::to_js(name), type__js, credentials_js)
}

///|
pub fn WorkerOptions::empty() -> WorkerOptions = "webapi_Dictionary" "empty"