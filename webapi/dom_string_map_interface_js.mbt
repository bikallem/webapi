///|
extern "js" fn dom_string_map_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj[name]"

///|
extern "js" fn dom_string_map_set_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => { obj[name] = value; }"

///|
extern "js" fn dom_string_map_delete__ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { delete obj[name]; }"
