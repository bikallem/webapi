extern "js" fn custom_element_registry_new_ffi() -> CustomElementRegistry = "() => new CustomElementRegistry()"

extern "js" fn custom_element_registry_get_is_undefined_ffi(obj : CustomElementRegistryGet) -> Bool = "(obj) => obj === undefined"

extern "js" fn custom_element_registry_define_ffi(obj: JsValue, name: JsValue, constructor_: JsValue, options: JsValue) -> Unit = "(obj, name, constructor_, options) => obj.define(name, constructor_, options)"

extern "js" fn custom_element_registry_get_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.get(name)"

///|
fn custom_element_registry_get_ffi(obj: JsValue, name: JsValue) -> CustomElementRegistryGet {
  custom_element_registry_get_ffi_js(obj, name).unsafe_cast()
}

extern "js" fn custom_element_registry_get_name_ffi(obj: JsValue, constructor_: JsValue) -> JsValue = "(obj, constructor_) => obj.getName(constructor_)"

extern "js" fn custom_element_registry_when_defined_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.whenDefined(name)"

///|
fn custom_element_registry_when_defined_ffi(obj: JsValue, name: JsValue) -> JsPromise[CustomElementConstructor] {
  custom_element_registry_when_defined_ffi_js(obj, name).unsafe_cast()
}

extern "js" fn custom_element_registry_upgrade_ffi(obj: JsValue, root: JsValue) -> Unit = "(obj, root) => obj.upgrade(root)"

extern "js" fn custom_element_registry_initialize_ffi(obj: JsValue, root: JsValue) -> Unit = "(obj, root) => obj.initialize(root)"