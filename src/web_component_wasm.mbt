///|
fn web_component_wrap_cb(f : (HTMLElement) -> Unit) -> JsValue = "webapi_WebComponent" "wrapCb"

///|
fn web_component_wrap_attr_cb(
  f : (HTMLElement, String, JsValue, JsValue) -> Unit,
) -> JsValue = "webapi_WebComponent" "wrapCb"

///|
fn define_custom_element_ffi(
  tag_name : String,
  on_create : JsValue,
  on_connected : JsValue,
  on_disconnected : JsValue,
  on_adopted : JsValue,
  on_attribute_changed : JsValue,
  observed_attributes : JsValue,
) -> Unit = "webapi_WebComponent" "define"
