///|
extern "js" fn dom_string_list_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn dom_string_list_contains_ffi(
  obj : JsValue,
  string : JsValue,
) -> JsValue = "(obj, string) => obj.contains(string)"
