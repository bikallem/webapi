///|
extern "js" fn js_value_to_string(value : @webapi.JsValue) -> String =
  "(v) => '' + v"

///|
extern "js" fn is_null_or_undefined(value : @webapi.JsValue) -> Bool =
  "(v) => v == null"
