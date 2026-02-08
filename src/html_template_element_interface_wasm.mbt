///|
fn html_template_element_new_ffi() -> HTMLTemplateElement = "webapi_HTMLTemplateElement" "new"

///|
fn html_template_element_content_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_content"

///|
fn html_template_element_shadow_root_mode_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootMode"

///|
fn html_template_element_set_shadow_root_mode_ffi(
  obj : JsValue,
  shadow_root_mode : JsValue,
) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootMode"

///|
fn html_template_element_shadow_root_delegates_focus_ffi(
  obj : JsValue,
) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootDelegatesFocus"

///|
fn html_template_element_set_shadow_root_delegates_focus_ffi(
  obj : JsValue,
  shadow_root_delegates_focus : JsValue,
) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootDelegatesFocus"

///|
fn html_template_element_shadow_root_clonable_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootClonable"

///|
fn html_template_element_set_shadow_root_clonable_ffi(
  obj : JsValue,
  shadow_root_clonable : JsValue,
) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootClonable"

///|
fn html_template_element_shadow_root_serializable_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootSerializable"

///|
fn html_template_element_set_shadow_root_serializable_ffi(
  obj : JsValue,
  shadow_root_serializable : JsValue,
) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootSerializable"

///|
fn html_template_element_shadow_root_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "webapi_HTMLTemplateElement" "get_shadowRootCustomElementRegistry"

///|
fn html_template_element_set_shadow_root_custom_element_registry_ffi(
  obj : JsValue,
  shadow_root_custom_element_registry : JsValue,
) -> Unit = "webapi_HTMLTemplateElement" "set_shadowRootCustomElementRegistry"
