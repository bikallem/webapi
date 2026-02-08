///|
extern "js" fn html_param_element_new_ffi() -> HTMLParamElement = "() => new HTMLParamElement()"

///|
extern "js" fn html_param_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_param_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_param_element_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
extern "js" fn html_param_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
extern "js" fn html_param_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn html_param_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_param_element_value_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.valueType"

///|
extern "js" fn html_param_element_set_value_type_ffi(
  obj : JsValue,
  value_type : JsValue,
) -> Unit = "(obj, valueType) => { obj.valueType = valueType; }"
