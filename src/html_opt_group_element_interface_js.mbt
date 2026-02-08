///|
extern "js" fn html_opt_group_element_new_ffi() -> HTMLOptGroupElement = "() => new HTMLOptGroupElement()"

///|
extern "js" fn html_opt_group_element_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
extern "js" fn html_opt_group_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_opt_group_element_label_ffi(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
extern "js" fn html_opt_group_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"
