// Auto-generated MoonBit bindings for FunctionStringCallback callback

// Do not edit manually

//
// WebIDL Callback:
// callback FunctionStringCallback = undefined (DOMString data);

///|
#external
pub type FunctionStringCallback

///|
pub impl TJsValue for FunctionStringCallback with to_js(self : FunctionStringCallback) -> JsValue = "%identity"

///|
pub fn cb_function_string_callback(f : (String) -> Unit) -> FunctionStringCallback = "webapi_FunctionStringCallback" "new"