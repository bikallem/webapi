extern "js" fn html_template_element_new_ffi() -> HTMLTemplateElement = "() => new HTMLTemplateElement()"

extern "js" fn html_template_element_content_ffi(obj: JsValue) -> JsValue = "(obj) => obj.content"

extern "js" fn html_template_element_shadow_root_mode_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootMode"

extern "js" fn html_template_element_set_shadow_root_mode_ffi(obj: JsValue, shadow_root_mode: JsValue) -> Unit = "(obj, shadowRootMode) => { obj.shadowRootMode = shadowRootMode; }"

extern "js" fn html_template_element_shadow_root_delegates_focus_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootDelegatesFocus"

extern "js" fn html_template_element_set_shadow_root_delegates_focus_ffi(obj: JsValue, shadow_root_delegates_focus: JsValue) -> Unit = "(obj, shadowRootDelegatesFocus) => { obj.shadowRootDelegatesFocus = shadowRootDelegatesFocus; }"

extern "js" fn html_template_element_shadow_root_clonable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootClonable"

extern "js" fn html_template_element_set_shadow_root_clonable_ffi(obj: JsValue, shadow_root_clonable: JsValue) -> Unit = "(obj, shadowRootClonable) => { obj.shadowRootClonable = shadowRootClonable; }"

extern "js" fn html_template_element_shadow_root_serializable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootSerializable"

extern "js" fn html_template_element_set_shadow_root_serializable_ffi(obj: JsValue, shadow_root_serializable: JsValue) -> Unit = "(obj, shadowRootSerializable) => { obj.shadowRootSerializable = shadowRootSerializable; }"

extern "js" fn html_template_element_shadow_root_custom_element_registry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRootCustomElementRegistry"

extern "js" fn html_template_element_set_shadow_root_custom_element_registry_ffi(obj: JsValue, shadow_root_custom_element_registry: JsValue) -> Unit = "(obj, shadowRootCustomElementRegistry) => { obj.shadowRootCustomElementRegistry = shadowRootCustomElementRegistry; }"