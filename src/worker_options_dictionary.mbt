// Auto-generated MoonBit bindings for WorkerOptions dictionary
// Do not edit manually

#external
pub type WorkerOptions

pub impl TJsValue for WorkerOptions with to_js(self: WorkerOptions) -> JsValue = "%identity"


fn worker_options_ffi(name : JsValue, type_ : JsValue, credentials : JsValue) -> WorkerOptions = "webapi_WorkerOptions" "new"


pub fn WorkerOptions::new(
  name? : String? : String = "",
  type_? : WorkerType? : WorkerType = "classic",
  credentials? : RequestCredentials? : RequestCredentials = "same-origin") -> WorkerOptions {
    worker_options_ffi(
      TJsValue::to_js(name)
     ,TJsValue::to_js(type_)
     ,TJsValue::to_js(credentials)
    )
}


pub fn WorkerOptions::empty() -> WorkerOptions = "webapi_Dictionary" "empty"